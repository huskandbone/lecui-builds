#!/usr/bin/env bash
# Tells you about a new issue (with Claude's note) or a reply, in Discord. Posts nothing on GitHub.
#   alert.sh issue   PLUGIN, ANTHROPIC_API_KEY, MODEL, GH_TOKEN, REPO, ISSUE, ACTION, DISCORD
#   alert.sh reply   PLUGIN, REPO, ISSUE, TITLE, WHO, BODY, URL, DISCORD
# (All of them come from the workflow's env.)
# shellcheck disable=SC2153
set -euo pipefail
here=$(dirname "$0")

# One Discord message, cut to Discord's length. Never pings anyone, whatever the text says.
say() {
  if [ -z "${DISCORD:-}" ]; then
    echo "DISCORD_WEBHOOK_URL isn't set, so nothing was sent."
    return 0
  fi
  jq -n --arg c "$1" '{content: ($c | .[0:1990]), allowed_mentions: {parse: []}}' |
    curl -sS -m 20 -H 'Content-Type: application/json' -d @- -o /dev/null -w 'Discord answered %{http_code}\n' "$DISCORD"
}

# Links in what Claude wrote are dropped, except this repo's: the issue it read was written by a stranger.
unlink() {
  perl -CSD -pe 's{(?:https?://|\bwww\.)[^\s<>()\[\]"'\''`]+}{ my $u = $&; $u =~ m{^https?://github\.com/\Q$ENV{REPO}\E(/|$)}i ? $u : "[link]" }ge'
}

case "${1:-}" in
  reply)
    excerpt=$(printf '%s' "$BODY" | tr '\r\n' '  ' | cut -c1-300 | unlink)
    [ ${#BODY} -le 300 ] || excerpt="$excerpt..."
    say "💬 **$PLUGIN #$ISSUE** $TITLE: a reply from $WHO"$'\n'"> $excerpt"$'\n'"$URL"
    ;;

  issue)
    issue=$(gh issue view "$ISSUE" --repo "$REPO" --json number,title,body,author,labels,createdAt,url)
    others=$(gh issue list --repo "$REPO" --state all --limit 100 --json number,title,state \
      --jq '.[] | "#\(.number) [\(.state)] \(.title)"' | grep -v "^#$ISSUE " || true)
    title=$(jq -r .title <<<"$issue" | unlink)
    who=$(jq -r .author.login <<<"$issue")
    url=$(jq -r .url <<<"$issue")
    what="a new issue"
    [ "${ACTION:-}" = reopened ] && what="reopened"

    request=$(mktemp)
    jq -n --arg model "$MODEL" --arg plugin "$PLUGIN" --rawfile prompt "$here/prompt.md" --rawfile readme README.md \
      --argjson issue "$issue" --arg others "$others" '{
        model: $model,
        max_tokens: 1024,
        system: ($prompt + "\n# " + $plugin + "'"'"'s README\n\n" + $readme),
        tools: [{
          name: "report",
          description: "Your note to the developer about this issue.",
          input_schema: {
            type: "object",
            properties: {
              kind: {type: "string", enum: ["bug", "question", "idea", "other", "spam"]},
              severity: {type: "string", enum: ["high", "medium", "low"]},
              part: {type: "string"},
              summary: {type: "string"},
              missing: {type: "string"},
              duplicate_of: {type: "integer"}
            },
            required: ["kind", "severity", "part", "summary", "missing"]
          }
        }],
        tool_choice: {type: "tool", name: "report"},
        messages: [{role: "user", content: ("The issue, as GitHub has it:\n" + ($issue | tojson) +
          "\n\nOther issues on the repository, newest first:\n" + $others)}]
      }' > "$request"

    response=$(curl -sS -m 90 https://api.anthropic.com/v1/messages \
      -H "x-api-key: $ANTHROPIC_API_KEY" -H 'anthropic-version: 2023-06-01' -H 'content-type: application/json' \
      -d @"$request") || response=''
    report=$(jq -c 'first(.content[]? | select(.type == "tool_use") | .input) // empty' <<<"$response" 2>/dev/null || true)

    if [ -z "$report" ]; then
      echo "No note from Claude: $(jq -r '.error.message // "no answer"' <<<"$response" 2>/dev/null || echo 'no answer')"
      say "🔔 **$PLUGIN #$ISSUE**, $what: $title (by $who). No note this time, so have a look yourself."$'\n'"$url"
      exit 0
    fi

    get() { jq -r --arg k "$1" '.[$k] // "" | tostring' <<<"$report" | unlink; }
    kind=$(get kind); severity=$(get severity); part=$(get part)
    summary=$(get summary); missing=$(get missing); dup=$(get duplicate_of)
    [ "$dup" != 0 ] || dup=""

    if [ "$kind" = spam ]; then
      say "🗑️ **$PLUGIN #$ISSUE** looks like spam: $title (by $who)"$'\n'"$url"
      exit 0
    fi
    note="🔔 **$PLUGIN #$ISSUE** ($what): $kind, $severity, $part"$'\n'"**$title** (by $who)"$'\n'"$summary"
    [ -n "$missing" ] && note+=$'\n'"Still needed from them: $missing"
    [ -n "$dup" ] && note+=$'\n'"Looks like #$dup again."
    say "$note"$'\n'"$url"
    ;;

  *)
    echo "usage: alert.sh issue|reply" >&2
    exit 2
    ;;
esac

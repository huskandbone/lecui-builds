# LE-C UI

**Limsa E-Couple UI**: a Dalamud plugin that redoes FINAL FANTASY XIV's whole UI in a look of your choosing (usual,
cute or edgy): pieces of its own where it draws them, and the game's own pieces repainted in your look everywhere else.
Your UI is saved before anything changes, and your own settings go back every time you log out. Made by Husk & Bone.

![LE-C UI's HUD in the cute look](images/hud_cute.png)

## Install

1. In game, type `/xlsettings` and open **Experimental**.
2. Under **Custom Plugin Repositories**, paste this link, press **+**, make sure it's ticked, then **Save and Close**:

   ```
   https://raw.githubusercontent.com/huskandbone/lecui-builds/main/repo.json
   ```

3. Type `/xlplugins`, search for **LE-C UI**, and press **Install**.
4. **The setup opens first (once).** It says what LE-C UI changes, saves your UI as it is now (see
   [Your UI is saved first](#your-ui-is-saved-first)) in a place you pick, checks the copy, and shows how to remove LE-C
   UI. Until it's finished, LE-C UI draws nothing and changes nothing. Updates never ask again.
5. LE-C UI's Start page opens. **Use LE-C UI for my whole HUD** switches every piece on, each one where the game's own
   is in your HUD layout. Or switch pieces on one at a time.

Dalamud keeps it up to date from then on. You need the game started through XIVLauncher, with Dalamud (API 15).

**Updating to 0.3.114 from an older LE-C UI** starts LE-C UI's own settings fresh, once, so everything new comes on as it
does for a new player (before, some of it stayed off until you reset the plugin's data). Your game's UI and your saved UIs
aren't touched, you aren't asked to set up again, the pieces you had on stay on (each where the game's own is in your
HUD layout), and your old LE-C UI settings are kept as a copy in `pluginConfigs\LECUI` (the chat tells you where).

## What it replaces

Each piece has its own switch. On, LE-C UI draws it where the game's own was and keeps the game's own off the screen.
Off, the game's own is back exactly where it was.

| Piece | What LE-C UI's does |
|---|---|
| Chat box | Tabs of your own; your chat colours from the game, or a colour of your own for any channel (start from the Pastel or Neon set); its own colours for the background, edge, tabs, times and the line you type in; names in colours of your choosing (as it comes, each in its channel's colour, so never black); clickable links: web addresses (it asks before one opens, showing the whole address; right-click one to copy it), items, quests and statuses (what they are when you point at them, and a menu to copy the name or see an item's market prices), Party Finder listings, map flags and names, the same in your tells and saved chat; drag across lines and press Ctrl+C to copy them, or right-click a line to copy it or select part of it; and right-click a name for LE-C UI's own menu for them, light like the game's menus: send a tell, invite them to your party, their adventurer plate, examine them, make them party leader or remove them (when you lead; removing asks again), other plugins' own entries, or **More** for the game's own full menu (friends, blacklist and other plugins' entries) when they're near you or in your party, then your saved tells with them, their name and a colour of their own; the line you type in with its channel, and Enter opens it, as the game's does; an envelope by its cog opens your tells window, with how many are unread. Drag its tab row to move it any time; pull its sides or corner to size it while you're moving and sizing the pieces (`/lecui place`), so it never changes size by accident. Each channel keeps its own lines, so a fight's battle lines or a busy town's shouts never push your party's, free company's or tells' out. Right-click a tab to pop it out into a window of its own (close the window to put it back). The same line said again straight after itself shows once, with how many times it came ("(x3)"). The speech button by the line picks the game's auto-translate phrases, which go out as the game's own, read by everyone in their own language. Pick a font of its own for the chat: the look's, the game's AXIS, Clean, Light or Mono. Point at an item link for what it is (level and jobs, damage or defense, its stats, materia slots), shown next to the line. Commands, emotes, macros and tells all go through the game's own chat. In group pose it's out of the way until Enter opens its line, and goes again as the line closes (Enter sends it, Escape leaves it), so you can read and answer without it staying in your shots; or keep it there, or never show it there, on its page. |
| Party list | The game's order, HP and barriers with MP beside them and both numbers in their bars (as the game's own list has them), casts, statuses. Icons: job icons (or the game's framed ones, or roles), your chocobo's icon, party numbers, the leader's crown, signs over heads, ready check answers (bold green, red and grey marks, clear at a glance), who has the enemy's attention, cast icons, a mark for what Esuna removes. Who's raising whom: a fallen member's row lights up with the raiser's name (orange if two are raising the same person), and once they've been raised (an instant raise too) their row is boxed in green, "Insta raised by <name>" or "Raised by <name>", until they're back up. Statuses with no timer of their own (Kardia, Kardion) show none. In an alliance raid, which party you're in ("Alliance A", B or C) sits at the top of the list. Click to target, right-click for the game's menu, hover for `<mo>` macros. Plugins that move the mouse onto party members for mouseover actions can ask LE-C UI where its rows are, so they work with its list. Cross-world parties too: anyone near you as usual, everyone else with their job, level and the world they're on, faded only while they're away from you. Style it your way: the name over the bar or inside it, columns, each job's colour (or your role colours, one colour, or full to low), bars that turn redder as people are hurt, flat, soft, glossy or striped, square, rounded or slanted, a dark plate under them, and the HP written how and where you like, or **Like the game's own list** (thin bars, the numbers under them) in one click. |
| Duty list | The duty and its time and objectives, FATEs, the duty finder, the quests you follow. Click a quest to open it in the journal. |
| Job gauges | As the game has them for every job: the same windows (the second one its own piece), bars with their numbers, timers, pips and marks in each job's own shapes and colours. |
| You, your target, your focus target | HP and barrier, MP (with your MP's number over its bar), casts, statuses, your target's target. Right-click your target or focus target for the game's own menu. |
| Cast bar, statuses, enemy list, limit gauge, experience bar | All in the same look. The cast bar marks its last half second, when you can move without losing the cast (slide casting), and turns that colour once you're in it. |

Every piece is a box you can move and size, with its own background, size, shadow and border (borders can be switched off for one piece, or for all of them on the Look page). When the game's own right-click menus, yes/no questions, an adventurer plate or an examine window open over a piece, it fades out of their way and lets your mouse through. **Show and move every piece**
(the arrows on the settings window's title bar, or `/lecui place`) shows them all, with made-up contents where there's
nothing to show yet; hold Ctrl as you drag one to move them all together. The settings window minimizes to its title
bar, so you can watch the HUD while you change it.

| | |
|---|---|
| ![Party list icons](images/party_icons.png) | ![Every job's gauges](images/gauges_cute.png) |

![The party list styled five ways: names in the bars in each job's colour; two columns, redder as they're hurt; one colour with round ends; full to low; like the game's own list](images/party_styles.png)

![The chat box's colours: the Pastel and Neon sets, and the page you pick them on](images/chat_colours.png)

![The edgy look](images/hud_edgy.png)

*These pictures are made-up previews of LE-C UI's own drawing, not screenshots from the game.*

## The game's own UI, in your look

The game's own pieces are repainted in your look by LE-C UI itself (no Penumbra, nothing written to the game's files):
they stay the game's, so clicking, dragging, cooldowns and tooltips work as always. Each has its switch on LE-C UI's
**Game** page; off, it's the game's own again.

| Piece | In your look |
|---|---|
| Hotbars | Every keyboard bar, the cross hotbar, the pet bar and duty actions: the slot's frame, the cooldown sweep, procs and combos (a heart in cute, slashes in edgy, a diamond in usual), the keybind on a tag, the seconds left in big numbers when it's coming back, costs as small pills, charges as dots, each bar in a box of the look. |
| Minimap and the bottom strip | The round map in your look's ring, the main menu's buttons as your look's icons, the server info bar and gil as the design's pills. |
| Inventory, scenario guide, notices | The bags as a pill (or their dots), the main scenario's card, the notices as a pill. |
| Menus, tooltips and windows | Light, in your look's window colours, with its heart and sparkle (or the edgy cut corner and slashes): right-click menus, tooltips, questions, and the game's windows' frames, buttons, tabs, check boxes and fields. |
| Chat bubbles | Dark like the HUD, each in the colour of its channel as your chat box has it, with the speaker's name and the channel's icon; light ones if you like, and their size. |
| The big words across the screen | An area's name, "Duty Commenced", "Duty Complete", "Light Party" and the rest written in your look, sharp at any size, not cutting through your pieces. |
| Gathering, crafting, the piano | The gathering window's chances on pills and its integrity as diamonds; the crafting window's bars; the piano's keys, frame, buttons and metronome, and the keys you play lit in your colour. |
| Numbers, the countdown, the other alliances | Your critical hits fly in your colour; the countdown as a ring that empties the whole way; the other two parties of an alliance raid as lists in your look. |

PvP, Cosmic Exploration and special places (Occult Crescent, Bozja, Eureka, the island, deep dungeons) are left as the
game's own, and LE-C UI's pieces are cut around their windows.

## Above heads (off until you switch it on)

One switch, on LE-C UI's Start page or its **Above heads** page (`/lecui heads`):
- **Names over heads**: the game's own names, restyled. Your party's names in their role's colour (yours too, if you
  like), shortened to first names, initials or their job if you like; your friends, your free company and your
  alliance each in a colour of their own (as it comes; pick the colours, or switch any off); your own name in a colour
  of its own if you like; and everyone else's in a colour of your own. Which names show at all is still up to the game's own Nameplates settings.
- **Or LE-C UI's own names** in their place (a switch): in your look, over every player around you (or just your
  party): their job's icon and their status icon (a mentor's crown, role-playing and the rest), their name, their free
  company's tag, and their title, over or under it as the game places it, in the colours above. Custom titles from
  Honorific show just as Honorific draws them, in their own colours with their moving glow, if you have it. They work
  even with the game's own names switched off, and switched off, the game's names are back.
- **Bars under the names**, in your look: over your party (HP and barrier; their MP, their name and numbers if you
  like), over the enemies fighting you in a dungeon (or every enemy near) with their HP, what they're casting (the ones
  you can interrupt pulse) and a mark on the ones you're holding, and a frame over your target (over anything, enemies
  only or people only), with their names written over the bars in place of the game's. They hold still over people
  standing around, and follow them when they mount up or sit down.
  They aren't seen through walls, and someone standing in front of a name or a speech bubble covers it, cut along their exact outline (hair, weapons and mounts too). A mentor's crown and a new adventurer's or returner's sprout are always by their names.
  They hide in cutscenes, group pose, with the UI hidden, and they go under the game's own HUD and windows (hotbars, chat, map, menus), as the game's own names do: only where the game actually draws something, never in its empty room. If a name ever looks cut where nothing is, `/lecui outline` (or "Outline what they go under", near the top of the Above heads page) outlines every piece of the game's UI it goes under, with its name, and saves what it found as `outline.txt` in LE-C UI's settings folder. In busy places, nearer names sit over farther ones, and far names and names behind a nearer one are drawn fainter, so a crowd's names don't knot together ("Tidier in busy places", on as it comes; names show out to 50 yalms, which you can change). Style them like the party list,
  give your target's frame a look of its own, or switch the bars off for names only; **For busy fights** makes them
  taller and glossy on a dark plate, so they stand out in a raid.
- **Sharp writing** (new, a switch): names and numbers over heads drawn from big fonts, so they stay crisp however big
  you set them, and LE-C UI's names in a font of your choice: the game's own (AXIS, Jupiter, Trump Gothic, Miedinger),
  Dalamud's (Clean, Light, Mono), or any font on your computer through Dalamud's font chooser, made at every size the
  names are drawn at, with a sharpness slider.
  It's only used once you're logged in, so you can always switch it off at the title screen.
- **The edge round the names**: thinner, none, or wider, and black or a colour of your own instead of a shade of each
  name's colour; or an edge of its own for each name colour (your friends', your free company's, your alliance's,
  everyone else's, your own, and each role's).
- **Role colours** of your own for tanks, healers and damage dealers (start from the game's, Pastel, Neon or Jewels),
  used by the names, the bars and the party list.

Switch it off and the game's own names are back at once. While LE-C UI's bars are on, the game's own HP bars and cast
bars on names are switched off in its settings (Character Configuration, UI Settings, Nameplates), and your own
settings are back when you log out. Over the enemies it draws bars over, LE-C UI writes their names in place of the
game's (as it comes; a switch).

![Names and bars over heads, six ways: as it comes; initials with names and numbers; LE-C UI's own names, titles and job icons; for busy fights; names only; a friend, your free company, your alliance and someone else in colours of their own](images/above_heads.png)

*A made-up preview of LE-C UI's own drawing, not a screenshot from the game.*

## Tells window (on from the start)

Your tells get a window of their own: a conversation for each person, with a line to answer on. It pops up when a tell
comes in or when you send one (on that conversation), without taking your keyboard, and waits until after a fight or a
cutscene. `/lecui tells` opens it. Type an emote there (/hug, /em ...) and it runs, as from the game's own chat line. **History** on a conversation opens every saved tell with that person, day by day,
with a search. Switch the window off on LE-C UI's Start page or its Chat box page (**Tells window**).

The conversations are kept for next time: log out, restart the game or update LE-C UI, and the people you're talking to
are still there, with what's been said and what's unread (and the window's open again if it was). Each of your
characters has its own, kept in a file on your computer only (`pluginConfigs\LECUI\Tells`), never sent anywhere;
closing a conversation lets it go. Switch **Keep the conversations for next time** off (Chat box page, Tells window) and
the kept ones are removed.

![The tells window, and History: every saved tell with one person](images/tell_history.png)

*A made-up preview of LE-C UI's own drawing, not a screenshot from the game.*

## Saved chat (on from the start, kept for good)

Your tells are kept in a plain text file a day on your computer (`pluginConfigs\LECUI\ChatLogs`), never sent anywhere,
for good unless you pick a shorter time. You can save other channels too (party, FC, linkshells...). `/lecui history`
reads them back, with a search. Switch it off, or pick the channels and how long to keep them, on LE-C UI's Chat box
page (**Saved chat**); the Start page has its switch too. Switched off, nothing more is written; what's saved stays until
you delete it there.

## Your UI is saved first

- **Before anything changes**, the setup saves your UI as it is: your HUD layouts, hotbars, keybinds, macros, chat
  filters and character settings, for every character on this computer, with the game's settings. Each saved UI is a
  zip, kept in the place you pick and again in `%AppData%\LE-C UI backups`, checked after it's written, and made
  read-only. LE-C UI has no way to delete one. Every zip has "How to put this back.txt" inside, so it works without
  LE-C UI too.
- **While you're logged in with it**, LE-C UI changes a few of the game's own UI settings so its pieces and the game's
  work together (the game's HP and cast bars on names while LE-C UI's bars are on, and the like). Your own value is
  noted first; LE-C UI refuses to change anything unless your UI is saved and proven in both places.
- **When you log out**, your own settings go back before the game saves, so whenever LE-C UI is off, removed, or not
  updated yet after a patch, the game's UI is yours, as you left it. If the game closes without logging out (a crash,
  Alt+F4), log in once more with LE-C UI and they're put right; its Uninstall reminds you if that's still to do.
- **When your UI changes, it's saved again** at your next login, with its date. **/lecui saved** shows every copy and
  what LE-C UI has set while you're logged in, with your own value beside it.
- **Every build is checked**: its code is read to prove the game's settings are only ever written in that one place,
  that nothing of a HUD layout or a game window's own place, size or showing is set, that the saved UIs are never
  deleted, moved or written over, and that it uses no hooks and no signature scans.
- **Make characters' UIs match** (`/lecui copy`): copy one character's UI onto others, the parts you tick. Everyone's UI
  is saved first.
- **One other plugin is only asked one thing**: with LE-C UI's own names and their titles on, Honorific (if you have
  it) is asked for people's custom titles. Nothing is ever sent to it or changed in it.
- **Other plugins can ask LE-C UI two things, and are only answered**: where its party list's rows are (for mouseover
  tools) and which look is on (so something drawn over the game can match it). Nothing another plugin asks changes
  anything in LE-C UI or in the game.
- **Your LE-C UI settings survive updates**: each new version keeps a copy of them from before it.

## Going back

- `/lecui off all`, or **The game's own HUD again** on LE-C UI's Start page, for LE-C UI's own pieces; each repainted
  piece has its switch on the **Game** page.
- **To remove LE-C UI, use its own Uninstall first** (`/lecui uninstall`, or the "Your saved UIs" page): it saves your
  UI as it is now and takes everything of LE-C UI's out of your game's UI. Keep your UI as it is, or pick one of your
  saved UIs to go back to (it's put back for you at the title screen). Then remove it in `/xlplugins`.
- Forgot, and removed it the plain way? Install it again and choose Uninstall: your saved UIs are still where you put
  them.
- LE-C UI's own settings are in `%AppData%\XIVLauncher\pluginConfigs\LECUI.json`, with copies from before each update
  in `pluginConfigs\LECUI\`.

## Commands

| Command | What it does |
|---|---|
| `/lecui` | LE-C UI's settings |
| `/lecui place` | Show, move and size every piece that's on (again to lock them) |
| `/lecui history` | Saved chat: your saved tells, and any other channels you save |
| `/lecui tells` | The tells window |
| `/lecui heads` | The names and bars over heads |
| `/lecui outline` | Outline what the names over heads go under (the game's UI, with each piece's name): again to stop |
| `/lecui saved` | Your saved UIs: every copy, save your UI now, what LE-C UI sets while you're logged in |
| `/lecui setup` | The setup |
| `/lecui uninstall` | Take LE-C UI out of your game's UI properly, before removing it |
| `/lecui copy` | Make characters' UIs match |
| `/lecui on <piece>` / `/lecui off <piece>` | Switch a piece on or off: chat, party, duty, gauge, gauge2, player, target, focus, cast, statuses, enemies, limit, exp, heads (the names and bars over heads), or all |
| `/lecui usual`, `/lecui cute`, `/lecui edgy` | Switch the look |

## For plugin makers

LE-C UI answers two Dalamud plugin calls (IPC), each a function giving back a `double[]`
(`GetIpcSubscriber<double[]>(name).InvokeFunc()`), and sends one message. They're only answered or sent: nothing you
call changes anything.

- `LECUI.PartyList.Rows`: nine numbers for each member drawn on LE-C UI's party list, in the order drawn: their entity
  ID, the row's left, top, width and height, then their name's left, top, width and height, in the game window's own
  pixels (the screen's, less ImGui's main viewport position). Empty while the list isn't drawn. Hovering a row makes
  that member the game's mouseover target.
- `LECUI.Look`: forty numbers (layout 1): [0] the layout's version; [1] the look (0 usual, 1 cute, 2 edgy); [2-21] the
  accent, second, writing, quiet writing and low-HP colours it draws over the game with (red, green, blue, alpha, 0 to
  1); [22] little drawings on; [23] hearts (cute) or slashes (edgy) among them; [24] sparkles (cute) or cut corners
  (edgy); [25] their size; [26] how round the corners are; [27] edgy headings in capitals; [28-39] the tank, healer and
  damage colours. Later layouts only add numbers at the end.
- `LECUI.ChatMenu.Person` (a message: `GetIpcSubscriber<string, uint, ulong, object>(name).Subscribe(...)`): sent every
  frame LE-C UI's right-click menu for someone in its chat is open, with their name, their home world's row ID and their
  character's content ID (0 when either isn't known). Draw your own entries with ImGui (`ImGui.Selectable`, as for Chat
  2's menu) right then, and they appear in LE-C UI's menu, under a line.

## Something wrong?

LE-C UI is new. If the party list, the duty list or a job gauge shows something different from the game's own, open
its settings page, copy **What the game holds for it**, and send it with an issue here. A piece that fails stops by
itself and gives you the game's own back. If your UI ever isn't as you left it, `/lecui saved` has every copy of it.

FINAL FANTASY XIV © SQUARE ENIX CO., LTD. LE-C UI is a fan-made plugin, not affiliated with or endorsed by Square Enix.

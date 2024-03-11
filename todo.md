// Misc
- [x]     clone -- works, just doesnt attach weapon
- [x]     givecamo - no camos in t4, maybe something in the future???
- [x]     drop 
- [x]     about -- works, might change in the future
- [x]     clearbodies -- works as intended
- [x]     viewhands -- works as intended
- [x]     eb_explosive -- works as intended
- [x]     eb_magic
- [x]     score -- works as intended

- [x]    spawn_model - can spawn script models, cant spawn anims on said scriptmodels
- []    spawn_fx // dunno yet, might yeet
- [x]   vision -- works as intended
- [x]   fog -- done, but once you set a fog, thats it, cant change it.
- [x]   change class

// Bots -- select_ents func is being weird, this whole section will take awhile
- [x]    bot_spawn
- [x]    bot_move
- [x]    bot_aim
- [x]    bot_stare
- [x]    bot_model
- [x]    bot_kill
- [x]    bot_holdgun
- [x]    bot_freeze

### Antiga 2.26.24 - 12AM

- We need to remove many things/adjust class names, wep names, akimbo checks, etc - will do tomorrow.
- WAW is weird with how it handles non threaded functions, in most cases, it is safe to add threads IE: scripts\utils::skip_prematch(); would be thread scripts\utils::skip_prematch();
    - Found that this can cause threads to not load properly, so please use this moving forward.
- I also made some movement changes (around method placement for performance improvements "loading time") IE: level waittill("prematch_over");
- Removed replaceFunc items since it does NOT exist and requires a custom DLL to be built for waw.
- Added .gitignore and made sure certain items weren't part of the project.
- Fixed loading lag/delay even with developer 2 enabled.
- Added some comments around code :D.

### Forgive 3.2.24 - 9PM
- Fixed bot functions by adding "for ( i = 0; i < level.players.size; i++ )"
    - Probably a better way to do this in the future.
- Added a default to implement bot warfare for plutonium in the future.
- REM maths.gsc
- Started writing an about message, might dump for old one.
- Enabled precache.
- Verified viewmodel and score functions work.
- REM:
    - utils::camo_int // No camos in T4.

- Need to fix:
    - ~~misc::class_swap // Broken atm.~~
    - misc::toggle_holding // Gotta do sum with this at some point.
    - misc::change_fog // Currently broken. Works, but cant change to another once one is set.
    - misc::about // Got close to what I wanted but not perfect... Text doesnt disappear on weapon change.

- 
    - utils::hud_tweaks // gTeamName dvars dont set.

### Antiga 3.4.24 - 11AM
- Fixed about menu text + text destroy | remember, treyarch is weird ;(.
- Added _globallogic to allow for level.PLAYER_CLASS_CHANGE to influence whether class changing is allowed or not.
- Test fog command again - added reset fog command too.

### Forgive 3.6.24 - 12AM
Need to fix:
- toggle_holding // Gotta do sum with this at some point.
- trying to skip prematch!!! -- update: got prematch to skip but welcome message wont show now. might just set prematch to like 2 or sum...

[+] level.MATCH_KILL_MESSAGE - hides the "you killed" message in the middle of the screen. // need help with this, doesnt work all the time. needs testing...

Fixed:
- VISUAL_HUD, switched from scr_gameended to ui_hud_hardcore dvars.

### Forgive 3.10.24 -10PM
- Please use new legend:
- [+] Added.
- [-] Removed.
- [~] Needs to be fixed.

#### Changelog

- [+] README

- [+] Added _weapons.gsc to include "hooks"... Ref scripts\hooks.gsc

- [+] Added _globallogic.gsc to include "hooks"... Ref scripts\hooks.gsc

- [🗸] Fixed weapons dropping with attached "fake weapon" for now.

- [~] SkipPrematch - Needs better fix rather than lowering grace period time.

- [~] Holding functions, needs a better system.

- [~] VISUAL_HUD, doesnt set by default. Oh well...
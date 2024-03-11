/*
 *      T4Cine
 *      Default settings - "The poor man's GSH"
 */

load_defaults()
{
    level.COMMAND_PREFIX            = "mvm";    // "text" - Prefix of the commands. Can be blank ("") to disable globally. You can disable it per-command in the scripts/commands.gsc file
    level.COMMAND_COLOR             = "^3";     // "^#" - q3 color code for the commands' descriptions and killfeed messages. Can be blank ("") to disable globally.
    level.HIGHLIGHT_COLOR           = "^1";     // "^#" - q3 color code for the highlighted text in the output messages that are sent when a command is inputted.

    level.MATCH_UNLIMITED_TIME      = true;     // [true/false] - Unlimited time
    level.MATCH_UNLIMITED_SCORE     = true;     // [true/false] - Unlimited score
    level.MATCH_KILL_SCORE          = 100;      // integer - The default score per kill
    level.MATCH_KILL_BONUS          = false;    // [true/false] - Whether or not to give bonuses (headshot, longshot, etc.) for kills
    level.MATCH_KILL_MESSAGE        = false;    // [true/false] - Hides the "you killed" message in the middle of the screen. Uses cg_centertime dvar.

    level.BOT_KILLCAMTIME           = 3;        // integer - Total time of the killcam in seconds, to control respawn delay (0 = instant respawn, -1 = reset killcam behavior)
    level.BOT_MOVE                  = false;    // [true/false] - Changes all testclients dvars (except _watchKillcam) to make them static
    level.BOT_WEAPHOLD              = true;     // [true/false] - Makes bots hold their weapons on death by default
    level.BOT_LATERAGDOLL           = true;     // [true/false] - Bot corpses will ragdoll only when the death animation has almost fully ended
    level.BOT_SPAWNCLEAR            = false;    // [true/false] - Clears ALL corpses whenever a bot spawns
    level.BOT_AUTOCLEAR             = 5;        // float - Time in seconds before a corpse deletes itself. 0 to disable.

    level.PLAYER_MOVEMENT           = true;     // [true/false] - Turn fall damage, stamina and jump slowdown on or off
    level.PLAYER_AMMO               = true;     // [true/false] - Gives you ammo and equipment upon reloading/using 
    level.PLAYER_CLASS_CHANGE       = true;     // [true/false] - Allows the player to always change classes on or off, uses _globallogic.
    
    level.VISUAL_LOD                = true;     // [true/false] - Increase LOD distances. MIGHT MAKE YOUR WEAPON FLICKER ON SOME MAPS!!!!
    level.VISUAL_HUD                = true;    // [true/false] - When false, hides the weaponbar/scorebar/minimap; Uses the ui_hud_hardcore dvar.

    //  Added features -4g
    level.BOT_WARFARE               = false;    // [true/false] - When true, enables bot warfare. // BW DOESNT WORK ON STEAM, MAYBE IMPLEMENT ON PLUTONIUM? -4g
}
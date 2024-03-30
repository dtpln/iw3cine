/*
 *      IW3Cine
 *      Utilities
 */

#include common_scripts\utility;

// Macros
waitsec()
{ wait 1; }

waitframe()
{ wait .05; }

skipframe()
{ waittillframeend; }

//print( string ) // Removed "pront", sorry sass
//{ for ( i = 0; i < level.players.size; i++ ) player iPrintLn( string );  }

true_or_undef( cond )
{ if ( cond || !isdefined( cond ) ) return true; }

defaultcase( cond, a, b )
{ if ( cond ) return a; return b; }

//inarray( value, array, err )
//{ for ( i = 0; i < ( element in array; i++ )) { if ( element == value ) return true; } pront( err ); return false; }

bool( value )
{ if ( value ) return "ON"; return "OFF"; }


// Create thread for player spawns
create_spawn_thread( callback, args )
{
    self endon( "disconnect" );
    for(;;)
    {
        self waittill( "spawned_player" );
        if ( !isdefined( args ) ) 	
             self [[callback]]();
        else self [[callback]]( args );
    }
}


// Weapons-related functions
camo_int( int )
{
    return int( tableLookup( "mp/camoTable.csv", 1, int, 0 ) );
}

get_offhand_name( item )
{
    switch ( item )
    {
        case "flash_grenade_mp":
            return "flash";
        case "smoke_grenade_mp":
            return "smoke";
        case "flare_mp":
            return "flare";
        default:
            return item;
    }
}

// Gotta test all weapons and add them if needed
fake_killfeed_icon( weapon )
{
    switch ( weapon )
    {
        case "cheytac":
            return "intervention";
        case "m4":
            return "m4a1";
        case "masada":
            return "acr";
        default:
            return weapon;
    }
}

take_offhands_tac()
{
    self takeweapon( "smoke_grenade_mp" );
    self takeweapon( "flash_grenade_mp" );
    self takeweapon( "concussion_grenade_mp" );
}

take_offhands_leth()
{
    self takeweapon( "flare_mp" );
    self takeweapon( "throwingknife_mp" );
    self takeweapon( "c4_mp" );
    self takeweapon( "claymore_mp" );
    self takeweapon( "semtex_mp" );
    self takeweapon( "frag_grenade_mp" );
}

is_akimbo( weapon )
{
    if ( isSubStr( weapon.name, "akimbo" ) )
        return true;
    return false;
}

skip_prematch() // Works, i guess... -4g
{
    //thread maps\mp\gametypes\_globallogic::matchStartTimer( "waiting_for_teams", "0" );
    //thread maps\mp\gametypes\_globallogic::matchStartTimer( "Moviemaking starts in:", 0 );
    setDvar( "scr_game_graceperiod", 5);
    level.prematchPeriodEnd = -1;
}

lod_tweaks()
{
    if(!level.VISUAL_LOD) return;

    setDvar("r_lodBiasRigid",   "-1000");
    setDvar("r_lodBiasSkinned", "-1000");
}

hud_tweaks()
{
    setDvar("sv_hostname", "^3Sass' Cinematic Mod ^7- Ported to WAW by ^3Forgive & Antiga");
    setDvar("g_TeamName_Allies",    "allies");
    setDvar("g_TeamName_Axis",      "axis");
    setDvar("ui_hud_hardcore",        !level.VISUAL_HUD);
    maps\mp\gametypes\_globallogic::setObjectiveText(game["attackers"], "^3Sass' Cinematic Mod ^7- Ported to WAW by ^3Forgive ^7and ^3Antiga");
	maps\mp\gametypes\_globallogic::setObjectiveText(game["defenders"], "^3Sass' Cinematic Mod ^7- Ported to WAW by ^3Forgive ^7and ^3Antiga");

    game["strings"]["change_class"] = undefined;
}

match_tweaks()
{
    if( level.MATCH_UNLIMITED_TIME )
        setDvar( "scr_" + level.gameType + "_timelimit", 0 );

    if( level.MATCH_UNLIMITED_SCORE ) {
        setDvar( "scr_" + level.gameType + "_scorelimit", 0 );
        setDvar( "scr_" + level.gameType + "_winlimit", 0 );
    }
    if( !level.MATCH_KILL_MESSAGE )
        setDvar( "cg_centertime", 0 );
}

bots_tweaks() //    Useless in games that lack these dvars by default. -4g
{
    setDvar( "testclients_doMove",      level.BOT_MOVE );
    setDvar( "testclients_doAttack",    level.BOT_MOVE );
    setDvar( "testclients_doReload",    level.BOT_MOVE );
    setDvar( "testclients_watchKillcam", 1 );
}


score_tweaks()
{
    maps\mp\gametypes\_rank::registerScoreInfo( "kill",  level.MATCH_KILL_SCORE );

    if ( level.MATCH_KILL_BONUS )
    {
        maps\mp\gametypes\_rank::registerScoreInfo( "headshot", 50 );
        maps\mp\gametypes\_rank::registerScoreInfo( "execution", 100 );
        maps\mp\gametypes\_rank::registerScoreInfo( "avenger", 50 );
        maps\mp\gametypes\_rank::registerScoreInfo( "defender", 50 );
        maps\mp\gametypes\_rank::registerScoreInfo( "posthumous", 25 );
        maps\mp\gametypes\_rank::registerScoreInfo( "revenge", 50 );
        maps\mp\gametypes\_rank::registerScoreInfo( "double", 50 );
        maps\mp\gametypes\_rank::registerScoreInfo( "triple", 75 );
        maps\mp\gametypes\_rank::registerScoreInfo( "multi", 100 );
        maps\mp\gametypes\_rank::registerScoreInfo( "buzzkill", 100 );
        maps\mp\gametypes\_rank::registerScoreInfo( "firstblood", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "comeback", 100 );
        maps\mp\gametypes\_rank::registerScoreInfo( "longshot", 50 );
        maps\mp\gametypes\_rank::registerScoreInfo( "assistedsuicide", 100 );
        maps\mp\gametypes\_rank::registerScoreInfo( "knifethrow", 100 );
    }
    else 
    {
        maps\mp\gametypes\_rank::registerScoreInfo( "headshot", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "execution", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "avenger", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "defender", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "posthumous", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "revenge", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "double", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "triple", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "multi", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "buzzkill", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "firstblood", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "comeback", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "longshot", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "assistedsuicide", 0 );
        maps\mp\gametypes\_rank::registerScoreInfo( "knifethrow", 0 );
    }
}

// Player & Bots manipulation
is_bot()
{
    assert( isDefined( self ) );
    assert( isPlayer( self ) );

    return ( ( isDefined( self.pers["isBot"] ) && self.pers["isBot"] ) || isSubStr( self getguid() + "", "bot" ) );
}

foreach_bot( arg, arg_two, arg_val )
{
    player = level.players;
    for(i=0;i<player.size;i++)
    {
        if(player[i] is_bot() && arg_two == 1)
            player[i] [[arg]]( arg_val );
        else if(player[i] is_bot() && arg_two == 0)
            player[i] [[arg]]();
    }
}

at_crosshair( ent )
{
    return BulletTrace( ent getTagOrigin( "tag_eye" ), anglestoforward( ent getPlayerAngles() ) * 100000, true, ent )["position"];
}

save_spawn()
{
    self.saved_origin = self.origin;
    self.saved_angles = self getPlayerAngles();
}

load_spawn()
{
    self setOrigin( self.saved_origin );
    self setPlayerAngles( self.saved_angles );
}

select_ents( ent, name, player )
{
    if ( isSubStr( ent.name, name ) || isSubStr( ent["name"], name )  || 
       ( name == "look" && inside_fov( player, ent["hitbox"], 10 ) )  || 
       ( name == "look" && inside_fov( player, ent, 10 ) )            || 
         name == "all" ) 
        return true;
    return false;
}

inside_fov( player, target, fov )
{
    normal = vectorNormalize( target.origin - player getEye() );
    forward = anglesToForward( player getPlayerAngles() );
    dot = vectorDot( forward, normal );
    return dot >= cos( fov );
}
/*
 *      T4Cine
 *      Precache
 *      
 *      >>>  IMPORTANT :
 *      - --EVERY animation needs to be precached-- // No anims in T4 unless building item. Useless anyway since you cant spawn models with anims. -4g
 *      - Multiplayer playermodels don't need to be precached, but Singleplayer ones do
 *
 *      >>>  WHERE TO FIND :
 *      List of MP models : 
 *      List of MP anims : 
 *
 *      >>>  HOW TO USE :
 *      Put your precache between the "{ }" brackets below custom_precache()
 *      precacheModel( "name_of_model" );
 *      precacheMPAnim( "name_of_anim" );
 */

custom_precache()
{ }









// Anything below this point is a no-touch zone, unless you know what you're removing
common_precache()
{
    precacheModel( "defaultactor" );
    precacheModel( "projectile_rpg7" );
    precacheModel( "projectile_semtex_grenade_bombsquad" );
    precacheModel( "tag_origin" );
    precacheModel( "com_plasticcase_enemy" );
}

fx_precache()
{
    // later
}
g_Chapter = "DEAD CENTER - HOTEL";

devchap( "ALL MODES" );

// FIXES_ALL

make_clip(	"_cliphang_window",		"Survivors",	1,	"-72 -123 -12",		"127 14 44",		"2335 6420 2804" );
make_clip(	"_cliphang_ledge",		"Survivors",	1,	"-450 -8 0",		"1130 8 216",		"1222 6232 2912" );
make_clip(	"_barricadefire_bypass",	"Survivors",	1,	"-17 -96 -64",		"17 96 64",		"1326 5624 2528" );

// FIX: Prevent the earliest press-forward balcony window shortcut.

// Teamwork shortcut. Will only patch for Coop if the Community wills so for parkour-esque shortcuts.

if ( g_BaseMode != "coop" && g_BaseMode != "realism" )
{
    con_comment( "TRIG:\tAnti-shortcut \"_shortcut_balcrail_trigonce\" deletes trighurt at lower floor." );
    con_comment( "INFO:\tFire particle \"_shortcut_balcrail_particle\" acts as visual deterrent." );

    make_trighurt( "_shortcut_balcrail_trighurt", "Everyone", "-32 -45 -96", "7 45 8", "1641 6432 2576" );
    make_clip( "_shortcut_balcrail_survivorclip", "Survivors", 1, "0 -32 0", "2 32 95", "1646 6560 2481" );

    SpawnEntityFromTable( "trigger_once",
    {
        targetname	= g_UpdateName + "_shortcut_balcrail_trigonce",
        StartDisabled	= 0,
        spawnflags	= 1,
        filtername	= "anv_globalfixes_filter_survivor",
        origin		= Vector( 2167, 5812, 2504 )
    } );

    EntFire( g_UpdateName + "_shortcut_balcrail_trigonce", "AddOutput", "mins -503 -836 -40" );
    EntFire( g_UpdateName + "_shortcut_balcrail_trigonce", "AddOutput", "maxs 185 2052 104" );
    EntFire( g_UpdateName + "_shortcut_balcrail_trigonce", "AddOutput", "solid 2" );

    EntFire( g_UpdateName + "_shortcut_balcrail_trigonce", "AddOutput", "OnStartTouch anv_mapfixes_shortcut_balcrail_*:Kill::0:-1" );

    SpawnEntityFromTable( "info_particle_system",
    {
        targetname	= g_UpdateName + "_shortcut_balcrail_particle",
        origin		= Vector( 1670, 6430, 2470 ),
        angles		= Vector( 0, 180, 8 ),
        start_active	= 1,
        effect_name	= "fire_window_hotel"
    } );
}
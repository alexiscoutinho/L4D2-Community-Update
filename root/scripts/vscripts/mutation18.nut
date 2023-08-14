//-----------------------------------------------------
Msg("Activating Mutation 18\n");

DirectorOptions <-
{
	ActiveChallenge = 1

	weaponsToConvert =
	{
		weapon_first_aid_kit = "weapon_pain_pills_spawn"
	}

	function ConvertWeaponSpawn( classname )
	{
		if ( classname in weaponsToConvert )
		{
			return weaponsToConvert[classname];
		}
		return 0;
	}

	// Challenge vars
	cm_TempHealthOnly = true
	cm_AllowPillConversion = false
	cm_ShouldHurry = true

	TempHealthDecayRate = 0.0
}

function OnGameEvent_round_start( params ) // because of https://github.com/Tsuey/L4D2-Community-Update/issues/181
{
	Convars.SetValue( "pain_pills_decay_rate", 0.0 );
}

function OnGameEvent_player_left_safe_area( params )
{
	DirectorOptions.TempHealthDecayRate = 0.27; // pain_pills_decay_rate default
}

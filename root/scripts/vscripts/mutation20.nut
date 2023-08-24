//-----------------------------------------------------
Msg("Activating Healing Gnome\n");

MutationOptions <-
{
	weaponsToRemove =
	{
		weapon_first_aid_kit = 0
		weapon_pain_pills = 0
		weapon_adrenaline = 0
	}

	function AllowWeaponSpawn( classname )
	{
		if ( classname in weaponsToRemove )
		{
			return false;
		}
		return true;
	}

	// Challenge vars
	cm_TempHealthOnly = true
	cm_AllowPillConversion = false
	cm_HealingGnome = true

	TempHealthDecayRate = 0.0
}

function OnGameEvent_round_start( params )
{
	Convars.SetValue( "pain_pills_decay_rate", 0.0 );
}

function OnGameEvent_player_left_safe_area( params )
{
	DirectorOptions.TempHealthDecayRate = 0.27; // pain_pills_decay_rate default
}

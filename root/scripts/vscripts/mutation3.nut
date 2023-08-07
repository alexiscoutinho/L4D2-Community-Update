//-----------------------------------------------------
Msg("Activating Mutation 3\n");

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
	cm_MaxSpecials = 4
	cm_SpecialRespawnInterval = 45
	cm_WanderingZombieDensityModifier = 0.003

	// Global vars
	MobSpawnMinTime = 5
	MobSpawnMaxTime = 10
	MobMinSize = 10
	MobMaxSize = 15
	MobMaxPending = 30
	SustainPeakMinTime = 10
	SustainPeakMaxTime = 15
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 50
	PreferredMobDirection = SPAWN_BEHIND_SURVIVORS

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

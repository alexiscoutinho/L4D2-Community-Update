//-----------------------------------------------------
Msg("Activating Nightmare\n");

DirectorOptions <-
{
	ActiveChallenge = 1

	DominatorLimit = 4 // because of https://github.com/Tsuey/L4D2-Community-Update/issues/311 and 401, respectively
	cm_MaxSpecials = 8
	cm_SpecialRespawnInterval = 30
	cm_AutoReviveFromSpecialIncap = true
	cm_AllowPillConversion = false
	cm_TankLimit = 4
	ProhibitBosses = false

	BoomerLimit = 0
	SurvivorMaxIncapacitatedCount = 3
	SpecialInitialSpawnDelayMin = 5
	SpecialInitialSpawnDelayMax = 30
	TankHitDamageModifierCoop = 0.25
}

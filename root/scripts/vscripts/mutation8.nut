//-----------------------------------------------------
Msg("Activating Iron Man\n");

MutationOptions <-
{
	cm_AllowSurvivorRescue = false

	weaponsToRemove =
	{
		ammo = 0
	}

	function AllowWeaponSpawn( classname )
	{
		if ( classname in weaponsToRemove )
		{
			return false;
		}
		return true;
	}
}

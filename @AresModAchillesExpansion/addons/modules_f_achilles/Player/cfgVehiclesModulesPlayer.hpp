class Achilles_Player_Module_Base : Achilles_Module_Base
{
	//subCategory = "$STR_PLAYER";
	Category = "Achilles_fac_Player";
};

class Achilles_Module_Player_Set_Frequencies : Achilles_Player_Module_Base
{
	scopeCurator = 2;
	displayName = "$STR_SET_FREQUENCIES";
	function = "Achilles_fnc_PlayerSetFrequencies";
	icon = "\achilles\data_f_ares\icons\icon_default.paa";
	portrait = "\achilles\data_f_ares\icons\icon_default.paa";
};
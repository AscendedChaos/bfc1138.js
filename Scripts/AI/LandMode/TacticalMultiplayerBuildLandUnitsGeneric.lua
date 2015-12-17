-- $Id: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/AI/LandMode/TacticalMultiplayerBuildLandUnitsGeneric.lua#7 $
--/////////////////////////////////////////////////////////////////////////////////////////////////
--
-- (C) Petroglyph Games, Inc.
--
--
--  *****           **                          *                   *
--  *   **          *                           *                   *
--  *    *          *                           *                   *
--  *    *          *     *                 *   *          *        *
--  *   *     *** ******  * **  ****      ***   * *      * *****    * ***
--  *  **    *  *   *     **   *   **   **  *   *  *    * **   **   **   *
--  ***     *****   *     *   *     *  *    *   *  *   **  *    *   *    *
--  *       *       *     *   *     *  *    *   *   *  *   *    *   *    *
--  *       *       *     *   *     *  *    *   *   * **   *   *    *    *
--  *       **       *    *   **   *   **   *   *    **    *  *     *   *
-- **        ****     **  *    ****     *****   *    **    ***      *   *
--                                          *        *     *
--                                          *        *     *
--                                          *       *      *
--                                      *  *        *      *
--                                      ****       *       *
--
--/////////////////////////////////////////////////////////////////////////////////////////////////
-- C O N F I D E N T I A L   S O U R C E   C O D E -- D O   N O T   D I S T R I B U T E
--/////////////////////////////////////////////////////////////////////////////////////////////////
--
--              $File: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/AI/LandMode/TacticalMultiplayerBuildLandUnitsGeneric.lua $
--
--    Original Author: James Yarrow
--
--            $Author: James_Yarrow $
--
--            $Change: 56734 $
--
--          $DateTime: 2006/10/24 14:15:48 $
--
--          $Revision: #7 $
--
--/////////////////////////////////////////////////////////////////////////////////////////////////

require("pgevents")


function Definitions()
	
	Category = "Tactical_Multiplayer_Build_Land_Units_Generic"
	IgnoreTarget = true
	TaskForce = {
	{
		"ReserveForce"
		,"DenySpecialWeaponAttach"
		,"DenyHeroAttach"	
		,"RC_Level_Two_Tech_Upgrade | RC_Level_Three_Tech_Upgrade = 0,1"
		,"EC_Level_Two_Tech_Upgrade | EC_Level_Three_Tech_Upgrade = 0,1"
		,"UC_Level_Two_Tech_Upgrade | UC_Level_Three_Tech_Upgrade = 0,1"
        ,"RepC_Level_Two_Tech_Upgrade | RepC_Level_Three_Tech_Upgrade | RepC_Level_Four_Tech_Upgrade = 0,1"
        ,"Cis_Level_Two_Tech_Upgrade | Cis_Level_Three_Tech_Upgrade | Cis_Level_Four_Tech_Upgrade = 0,1"		
		,"Boba_Fett_Team_Land_MP | Darth_Team_Land_MP | General_Veers_Team | Emperor_Palpatine_Team | Mara_Jade_Team | The_Inquisitor_Team | = 0,1"
		,"Han_Solo_Team_Land_MP | Obi_Wan_Team | Droids_Team | Katarn_Team | Yoda_Team | Luke_Skywalker_Jedi_Team | Garm_Bel_Iblis_Team | General_Kota_Jedi_Team = 0,1"
		,"Urai_Fen_Team | Bossk_Team | Silri_Team | Tyber_Zann_Team | IG88_Team = 0,1"
		,"Anakin_Skywalker_Team | X2_Team | Omegasquad_Team | Obiwan_Team | Rep_Yoda_Team | Mace_Windu_Team | Deltasquad_Team |= 0,1"
		,"Jango_Fett_Team_Land_MP | General_Grievous_Team_Land_MP | Cad_Bane_Team | Count_Dooku_Team | Asajj_Ventress_Team_Land_MP | Darkside_Adept_Team  |  = 0,1"
		,"Rebel_Infiltrator_Team | RN_Rebel_Pod_Walker_Company | Rebel_Pirate_Skiff_Team | Rebel_Pirate_Swamp_Speeder_Team | Rebel_Pod_Walker_Company | Rebel_Infantry_Squad | Rebel_Tank_Buster_Squad | Rebel_Artillery_Brigade | Rebel_Light_Tank_Brigade | Rebel_Heavy_Tank_Brigade = 0,3"
		,"Rebel_Rifleman_Squad | Rebel_Elite_Light_Squad | Rebel_Elite_Team | Rebel_Saboteur_Squad | Rebel_Medium_Tank_Brigade | Rebel_MAAT | Rebel_X-wing_Land | Rebel_Artillery_Brigade |  Rebel_Engineer_Team | Rebel_AT_RT_Scout_Squad | Alliance_Grenadier_Squad | Rebel_Commando_Squad |= 0,3"
		,"EN_Imperial_Pod_Walker_Company | Empire_Pirate_Skiff_Team | Empire_Pirate_Swamp_Speeder_Team | Imperial_Stormtrooper_Squad | Imperial_Artillery_Corp | Imperial_Anti_Infantry_Brigade | | Imperial_Heavy_Scout_Squad | Imperial_Heavy_Assault_Company | Imperial_Light_Scout_Squad | Dark_Trooper_Team | DarkTrooper_P2_Company | DarkTrooper_P3_Company | Noghri_Assassin_Squad | Imperial_Shock_Trooper_Heavy_Squad | Imperial_Purgetrooper_Company | | | | |= 0,3"
		,"Imperial_Triton_Squad | Imperial_Rifleman_Squad | Imperial_Navy_Squad | Imperial_Light_Scout_Squad | DarkTrooper_P1_Company | TX_130T_Company | Engineer_Squad | Scout_Sniper_Squad | TX130T_Mortor_Group | Jump_Trooper_Team | Emp_Tie_Squadron | Shock_Soldier_Squad | Imperial_Commando_Team | Saber_Guard_Team |= 0,3"
		,"Republic_Clonetrooper_501st | Republic_Arc_Trooper_Squad | AT_TE_Company | Republic_ATXT_Squad | Republic_Clone_Sniper_P1_Squad | Republic_Clonetrooper_P1_Company | Republic_Rifleman_Squad | Republic_Clonetrooper_P2_Squad | Republic_Commando_Squad | Field_Com_Cody_Republic_P2_Team | Field_Com_Gree_Republic_P2_Team | Field_Com_Bly_Republic_P2_Team | Field_Com_Bacara_Republic_P2_Team | Republic_Jettrooper_P2_Squad | Laat_Air_Wing | Rep_ARC-170_Squadron | Republic_ATRT_Scout_Squad | Plex_CloneTrooper_Squad | Rep_TX_130T_Company = 0,3"
		,"BattleDroid_Squad | AAT_Tank_Company | Crab_Droid_Company | Snail_Tank_Enforcer_Company | HMP_Company | Cis_Stap_Squad | Cis_Super_BattleDroid_Squad | Homing_Spider_Droid_Company | Destroyer_Droid_Mk1_Company | Octuparra_Droid_Company | = 0,3"
		,"Canderous_Assault_Tank_Company | Destroyer_Droid_Company | Underworld_Disruptor_Merc_Squad | MAL_Rocket_Vehicle_Company | Underworld_Merc_Squad | Night_Sister_Company | MZ8_Pulse_Cannon_Tank_Company | Underworld_Pod_Walker_Company | Underworld_Skiff_Team | Underworld_Swamp_Speeder_Team | Mandalorians_Soldiers_Squad |BattleDroid_Squad_M | Mandalorian_Sniper_Team | Mandalorian_Speeder_Squad | Mandalorian_Clonetrooper_P15_Platoon | Mandalorians_Commando_Squad | Kedalbe_Assault_Tank_Company | Flame_Tank_Company | Mando_Laat_Air_Wing | Death_Watch_Basic_Squad | Death_Watch_Light_Squad | Field_Com_Mando_Team | Death_Watch_Lieutenant_Team | Death_Watch_Super_Commando_Squad | = 0,3"
		,"Rebel_Speeder_Wing | Gallofree_HTT_Company | Rebel_MDU_Company = 0,1"
		,"HAV_Juggernaut_Company | Lancet_Air_Wing | Imperial_Anti_Aircraft_Company | Empire_MDU_Company = 0,1"
		,"Vornskr_Wolf_Pack | F9TZ_Cloaking_Transport_Company | Underworld_MDU_Company = 0,1"
		}
	}
	RequiredCategories = {"Infantry | Vehicle | LandHero | Upgrade"}
	AllowFreeStoreUnits = false

end

function ReserveForce_Thread()
			
	ReserveForce.Set_Plan_Result(true)
	ReserveForce.Set_As_Goal_System_Removable(false)
	BlockOnCommand(ReserveForce.Produce_Force())

	-- Give some time to accumulate money.
	tech_level = PlayerObject.Get_Tech_Level()
	min_credits = 2000
	max_sleep_seconds = 30
	if tech_level == 2 then
		min_credits = 3000
		max_sleep_seconds = 45
	elseif tech_level >= 3 then
		min_credits = 4000
		max_sleep_seconds = 60
	end
	
	current_sleep_seconds = 0
	while (PlayerObject.Get_Credits() < min_credits) and (current_sleep_seconds < max_sleep_seconds) do
		current_sleep_seconds = current_sleep_seconds + 1
		Sleep(1)
	end
		
	ScriptExit()
end
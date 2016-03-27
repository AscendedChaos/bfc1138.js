-- $Id: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/AI/SpaceMode/TacticalMultiplayerBuildSpaceUnitsGeneric.lua#5 $
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
--              $File: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/AI/SpaceMode/TacticalMultiplayerBuildSpaceUnitsGeneric.lua $
--
--    Original Author: James Yarrow
--
--            $Author: James_Yarrow $
--
--            $Change: 54441 $
--
--          $DateTime: 2006/09/13 15:08:39 $
--
--          $Revision: #5 $
--
--/////////////////////////////////////////////////////////////////////////////////////////////////

require("pgevents")


function Definitions()
	
	Category = "Tactical_Multiplayer_Build_Space_Units_Generic"
	IgnoreTarget = true
	TaskForce = {
		{
		"ReserveForce"
		,"RS_Level_Two_Starbase_Upgrade | RS_Level_Three_Starbase_Upgrade | RS_Level_Four_Starbase_Upgrade | RS_Level_Five_Starbase_Upgrade = 0,1"
		,"ES_Level_Two_Starbase_Upgrade | ES_Level_Three_Starbase_Upgrade | ES_Level_Four_Starbase_Upgrade | ES_Level_Five_Starbase_Upgrade = 0,1"
		,"US_Level_Two_Starbase_Upgrade | US_Level_Three_Starbase_Upgrade | US_Level_Four_Starbase_Upgrade | US_Level_Five_Starbase_Upgrade = 0,1"
		,"Republic_Level_Two_Starbase_Upgrade | Republic_Level_Three_Starbase_Upgrade | Republic_Level_Four_Starbase_Upgrade | Republic_Level_Five_Starbase_Upgrade = 0,1"
		,"CSA_Level_Two_Starbase_Upgrade | CSA_Level_Three_Starbase_Upgrade | CSA_Level_Four_Starbase_Upgrade | CSA_Level_Five_Starbase_Upgrade = 0,1"
		,"CIS_Level_Two_Starbase_Upgrade | CIS_Level_Three_Starbase_Upgrade | CIS_Level_Four_Starbase_Upgrade | CIS_Level_Five_Starbase_Upgrade = 0,1"
		,"Pirate_Fighter_Squadron | IPV1_SYSTEM_PATROL_CRAFT | PIRATE_FRIGATE = 0,2"
		,"Rebel_X-Wing_Squadron | Y-Wing_Squadron | A_Wing_Squadron | Corellian_Corvette | Corellian_Gunboat | JEDI_CRUISER_R | Marauder_Missile_Cruiser | Nebulon_B_Frigate | Alliance_Assault_Frigate | Calamari_Cruiser | Calamari_Cruiser_MP |Fleet_Com_Rebel_Team | B-Wing_Squadron | MC30_Frigate  | E_Wing_Squadron | Mc-80 = 0,3"
		,"Tie_Fighter_Squadron | Tie_Bomber_Squadron | Tartan_Patrol_Cruiser | JEDI_CRUISER_E | Broadside_Class_Cruiser | Acclamator_Assault_Ship | Victory_Destroyer | Interdictor_Cruiser | Star_Destroyer | Star_Destroyer_MP |Fleet_Com_Empire_Team | TIE_Defender_Squadron | TIE_Interceptor_Squadron | TIE_Phantom_Squadron | Enforcership | Tie_Droid_Squadron | Eclipse_Super_Star_Destroyer= 0,3"
		,"Jedi_Corvette_01 | Republic_Corvette_01 | Republic_Corvette_02 | Republic_Corvette_03 | Republic_Corvette_04 | Republic_Corvette_05 | Republic_Corvette_06 | Republic_Interdictor_Cruiser | IMP_VictorIICruiser | Justice_Cruiser| Republic_Light_Cruiser | Battlehship_Analouge = 0,3"
		,"REP_VictorIICruiser_MP | GA_Y-Wing_Squadron | GA_E_Wing_Squadron | Rep_Y-Wing_Squadron | GA_Nebulon_B_Frigate | GA_Victory_Destroyer | Hapes_BattleDragon | GA_Calamari_Cruiser | GA_Mc-80 | Firespray_Squadron | New_Republic_Star_Destroyer | Strident_Destroyer | GA_Super_Star_Destroyer= 0,3"
		,"arc_170_Squadron | Delta-7_Squadron | eta2_Fighter_Squadron | V19_Torrent_Squadron | Y-Wing_Squadron_R | VWing_Squadron_Rep | ARC-170_Squadron_MP | Eta2_Actis_Squadron | R_Dreadnought | R_Venator | Republic_Star_Destroyer = 0,3"
		,"Sith_Fighter_Squadron | Acclamator_Assault_Ship_Rep | Venator | Venator_MP | Sith_Destroyer_Star_Forge | Leviathan | Leviathan_Star_Forge | Centurian | Sith_Frigate | Derriphan_Frigate = 0,3"
		,"Vulture_Droid_Squadron | tridroid_Squadron | P38_Squadron | Hyena_DroidBomber_Squadron | Hutt_Corellian_Corvette | Diamond_Cruiser | Bullwark_Battleship | Munificent_Frigate | Pinnace_Frigate | Providence | Lucrehulk = 0,3"
		,"arc170_Squadron | TIE_Agressor_Squadron | TIE_Neutralizer_Squadron | TIE_Opressor_Squadron | Republic_Corvette_02 | TIE_Reaper_Squadron | AFT | Dreadnought | VSDMK1 | R | CC7700 | KSR | Chasemaster_Frigate = 0,3"
		,"VWing_Squadron_U | Chela_Fighter_Squadron | Foray_Corvette | Praetorian_Frigate | Venator_IMP | Defender_Corvette | Paladin_Destroyer | Hammerhead | Reliance_Class_Battleship = 0,3"
		,"Hutt_VWing_Squadron | Pirate_Fighter_Squadron_PC | Hutt_Corellian_Corvette | Hutt_IPV1_Craft | Pirate_Frigate_PC | Interceptor4_Frigate | Hutt_Marauder | Hutt_Refurbished_Venator | Watchkeeper | Vengeance_Frigate | Bloodstar = 0,3"
		,"Mandalorian_Cruiser_01 | Teroch_Gunship | Kyramud = 0,3"
		,"StarViper_Squadron | Crusader_Gunship | CIS_Missile_Frigate | Pirate_Kedalbe_Battleship = 0,3"
		,"Nantex_Squadron | Missle_Boat_Squadron | IPV_mk2 | Trireme_Corvette | Carrack_Corvette | Assault_Frigate_mk1 | Republic_Light_Cruiser | XYZ_Frigate | Thranta | Vainglorious | Corellian_Frigate_mk1 | Corellian_Frigate_mk2 | Eidolon_Frigate | Lictor_Frigate| Dauntless_Cruiser | Procurator | Majestic | Bothan_Cruiser | Mandator = 0,3"
		,"Rogue_Squadron_Space | Sundered_Heart | Han_Solo_Team_Space_MP | Home_One = 0,1"
		,"Boba_Fett_Team_Space_MP | Accuser_Star_Destroyer | Darth_Team_Space_MP | Executor_Super_Star_Destroyer | Admonitor_Star_Destroyer | Mace_Windu_Team_Space_MP | = 0,1"
		,"Slave_II | Anakin_Skywalker_Team_Space_MP | Obiwan_Team_Space_MP= 0,1"
		,"Tantive_IV_R | Firespray_Squadron | Venator_U | Acclamator_Assault_Ship_U |Kandosii = 0,1"
		,"CHC | Telraw_Space | Vonmor_Space | Quaz_Space | Beta7_Venator | Mik = 0,1"
		,"Bossk_Team_Space_MP | IG88_Team_Space_MP | Mist_Hunter | The_Peacebringer = 0,1"
		,"Fighter | Bomber | Corvette | Frigate | Capital | SpaceHero = 0,9"
		}
	}
	RequiredCategories = {"Fighter | Bomber | Corvette | Frigate | Capital | SpaceHero"}
	AllowFreeStoreUnits = false

end

function ReserveForce_Thread()
			
	BlockOnCommand(ReserveForce.Produce_Force())
	ReserveForce.Set_Plan_Result(true)
	ReserveForce.Set_As_Goal_System_Removable(false)
		
	-- Give some time to accumulate money.
	tech_level = PlayerObject.Get_Tech_Level()
	min_credits = 2000
	max_sleep_seconds = 30
	if tech_level == 2 then
		min_credits = 4000
		max_sleep_seconds = 50
	elseif tech_level >= 3 then
		min_credits = 6000
		max_sleep_seconds = 80
	end
	
	current_sleep_seconds = 0
	while (PlayerObject.Get_Credits() < min_credits) and (current_sleep_seconds < max_sleep_seconds) do
		current_sleep_seconds = current_sleep_seconds + 1
		Sleep(1)
	end

	ScriptExit()
end
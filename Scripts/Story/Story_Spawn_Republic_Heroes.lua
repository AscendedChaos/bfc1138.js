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
--              $File: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/Story/Story_Spawn_Republic_Heroes.lua $
--
--    Original Author: ALPHA_BLUE_GROUP_MEMBERS
--
--            $Author: ALPHA__BLUE_GROUP_MEMBERS
--
--            $Change: 56734 $
--
--          $DateTime: 
--
--          $Revision: #7 $
--
--/////////////////////////////////////////////////////////////////////////////////////////////////

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

	StoryModeEvents = 
	{
		Universal_Story_Start = State_Universal_Story_Start,
		More_heroes_tech_2 = State_More_heroes_tech_2,
		More_heroes_tech_3 = State_More_heroes_tech_3,
		More_heroes_tech_4 = State_More_heroes_tech_4,
		More_heroes_tech_5 = State_More_heroes_tech_5,
	}

	unit_list1 = { "Rep_Yoda_Team", "Chancellor_Palpatine_Team", "X2_Team" }
	unit_list1b = { "Nute_Gunray_Team", "", "" }
	unit_list2 = { "Anakin_Skywalker_Team", "Obiwan_Team", "Omegasquad_Team" }
	unit_list2b = { "", "" }
	unit_list3 = { "", "", "", "" }
	unit_list3b = { "", "" }
	unit_list4 = { "", "", "" }
	unit_list4b = { "", "" }
	unit_list5 = { "", "", "", "", "", "", "", "" }
	unit_list5b = { "", "", "" }
	
	

end
function State_Universal_Story_Start(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("Cis_Ground_Droid_Works")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list1b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Cloning_Facilities")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list1, current_planet_rep_barracks, Republic_Bando, true, false)
				end						
			end	
end
function State_More_heroes_tech_2(message)
			if message == OnEnter then
				Sleep(2)		
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("Cis_Ground_Droid_Works")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list2b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Cloning_Facilities")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list2, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end
function State_More_heroes_tech_3(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("Cis_Ground_Droid_Works")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list3b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Cloning_Facilities")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list3, current_planet_rep_barracks, Republic_Bando, true, false)
				end						
			end	
end	
function State_More_heroes_tech_4(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("Cis_Ground_Droid_Works")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list4b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Cloning_Facilities")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list4, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end		
function State_More_heroes_tech_5(message)
			if message == OnEnter then
				Story_Event("Units_DESPAWNS")
				Sleep(5)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("Cis_Ground_Droid_Works")
												
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list5b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Cloning_Facilities")
										
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list5, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end				


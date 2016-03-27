                                 -- $Id: Single Unit Retreat/Hyperspace Script#2 $
--/////////////////////////////////////////////////////////////////////////////////////////////////
--
--    AlphaBlue
--
--          *           *          *                    *****    *
--         * *          *          *                    *   **   *
--        *   *         *          *                    *     *  *
--       *     *        *          *                    *   **   *
--      *       *       * *****    * ***      ****      ****     *   *     *     ***
--     *         *      * *   **   **   *    *   **     *****    *   *     *    *  *
--    *************     * *    *   *    *   *     *     *     *  *   *     *   *****
--   *             *    * *    *   *    *   *     *     *      * *   *     *   *
--  *               *   * *   *    *    *   *     *     *      * *   *     *   *
-- *                 *  * *  *     *   *    **   * *    *     *  *   *    **   **
--*                   * * ***      *   *     ****  **   *****    *    **** *    ****
--                        *
--                        *
--                        *
--                        *
--                        *
--
--/////////////////////////////////////////////////////////////////////////////////////////////////
-- C O N F I D E N T I A L   S O U R C E   C O D E -- D O   N O T   D I S T R I B U T E
--/////////////////////////////////////////////////////////////////////////////////////////////////
--                                  U S E   A N Y W A Y   Y O U   L I K E,   
--               B U T   P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N
--/////////////////////////////////////////////////////////////////////////////////////////////////
--
--              $File: Single_Retreat.lua $
--
--    Original Author: TAU / everythingeaw.com Forums
--
--    Modified further by: Alpha Blue  (Jesus Freak and Sidious Invader) 
--
--          $Revision: #2 $
--
--/////////////////////////////////////////////////////////////////////////////////////////////////
require("PGStateMachine")
require("PGSpawnUnits")

function Definitions()
    Define_State("State_Init",State_Init);
        retreat_active = nil
end

function State_Init(message)
    if message == OnEnter then
        if Get_Game_Mode() ~= "Space" then 
            ScriptExit()
                end
                -- info_obj
                if not Object.Is_Selectable() then
                        if Object.Get_Owner() == Find_Player("Empire") then
                                Object.Change_Owner(Find_Player("Neutral"))-- prevents anything from attacking it
                                Sleep(GameRandom(60,120)) -- wait before reinforcing
                                Reinforce_Unit(Object.Get_Type(), Object.Get_Position(), Find_Player("Empire"),false,false)
                                Object.Play_SFX_Event("EHD_Reinforcements_Available")
                        elseif Object.Get_Owner() == Find_Player("Rebel") then
                                Object.Change_Owner(Find_Player("Neutral"))
                                Sleep(GameRandom(60,120))
                                Reinforce_Unit(Object.Get_Type(), Object.Get_Position(), Find_Player("Rebel"),false,false)
                                Object.Play_SFX_Event("RHD_Reinforcements_Available")
                        elseif Object.Get_Owner() == Find_Player("Underworld") then
                                Object.Change_Owner(Find_Player("Neutral"))
                                Sleep(GameRandom(60,120))
                                Reinforce_Unit(Object.Get_Type(), Object.Get_Position(), Find_Player("Underworld"),false,false)
                                Object.Play_SFX_Event("UHD_Reinforcements_Available")
                        end
                        if Object.Get_Owner().Is_Human() then
							Sleep(10) --give time for the SFX to play
						end
                        Object.Despawn()
                        ScriptExit()
                end
                 
				--AI filter, edit the MoveToLocationRush.lua, AreaSweep.lua, SpaceScout.lua,
		--TurboAttack.lua, and TurboAttackLocation.lua in scripts\AI\spacemode
		--and replace it where it says something like Activate_Ability("Turbo", true)
		--or Try_Ability(MainForce, "Turbo") with something like:
		--
		--don't activate if the unit has the retreat ability
		--for i, unit in pairs(MainForce) do
			--if not unit.Is_Ability_Autofire("Turbo") then
				--unit.Activate_Ability("Turbo", true)
			--end
		--end
		Object.Set_Single_Ability_Autofire("TURBO", true)
		
                --AI controller
                if not Object.Get_Owner().Is_Human() then
                        if Object.Get_Hull() <= 0.2 then
                                Object.Activate_Ability("TURBO", true)
                        end
                end
        elseif message == OnUpdate then
                --code for the retreat ability
                if Object.Is_Ability_Active("TURBO") then
                        field_active = false
                        --prevent the unit from retreating if theres is a unit interdicting
                        for k,unit in pairs(Find_All_Objects_Of_Type("Frigate | Capital") ) do
                                if TestValid(unit) and unit.Is_Ability_Active("INTERDICT") then
                                        field_active = true
                                        Object.Activate_Ability("TURBO",false)
                                        break
                                end
                        end
                        if not field_active then
                                Sleep(GameRandom(3,5))
                                if Object.Is_Ability_Active("TURBO") and Object.Are_Engines_Online() then --and not Object.Is_Under_Effects_Of_Ability() then
                                        
                                        --and object to store the neccessary info so when the object despawns 
                                        info_obj = Create_Generic_Object(Object.Get_Type(), Object.Get_Position(), Object.Get_Owner())
                                        info_obj.Hide(true)
                                        info_obj.Prevent_AI_Usage(true)
                                        info_obj.Prevent_All_Fire(true)
                                        info_obj.Set_Garrison_Spawn(false)
                                        info_obj.Make_Invulnerable(true)
                                        info_obj.Set_Selectable(false)
                                        
                                        Object.Change_Owner(Find_Player("Neutral")) --prevents unit from lifting the FOW
                                        Object.Hyperspace_Away()
                                        Object.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
                                        
                                        Sleep(0.5)
                                        Game_Message("RETREATED_FOR_REPAIRS") --add text to dat
                                        --Ship retreated for repairs                                    
                                else
                                        Object.Activate_Ability("TURBO",false)
                                end
                        end
        end
        end
end
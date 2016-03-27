--/////////////////////////////////////////////////////////////////////////////////////////////////
--Tie Fighter spawner marker by Sidious Invader.
--/////////////////////////////////////////////////////////////////////////////////////////////////
-- Simply place two markers in the Map editor. 
-- The first marker is the Spawn Marker which will activate this script when a unit of yours is nearby. 
-- The second marker is the spawn point.

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

   -- Object isn't valid at this point so don't do any operations that
   -- would require it.  State_Init is the first chance you have to do
   -- operations on Object
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	player = nil
	spawner = nil
end


function State_Init(message)

	if message == OnEnter then
		-- Set up event handling for when an object moves within range
		Object.Event_Object_In_Range(Rebel_Bombardment_Now, 30)
	elseif message == OnUpdate then
		-- Do nothing
	elseif message == OnExit then
		-- Do nothing
	end
end

function Rebel_Bombardment_Now(prox_object, object)

	player = object.Get_Owner()
	player2 = Find_Player("Rebel")
	spawner = Find_First_Object("ORBITAL_BOMBARDMENT_REBEL_SPAWN_POINT")
	if player.Is_Human() then
		Create_Generic_Object("Proj_Empire_Bombardment_Turbolaser", spawner, player2)
		
		-- Cancel the object in range event from signaling anymore.	
		Object.Cancel_Event_Object_In_Range(Rebel_Bombardment_Now)
		
		Object.Despawn()
		
	end
end
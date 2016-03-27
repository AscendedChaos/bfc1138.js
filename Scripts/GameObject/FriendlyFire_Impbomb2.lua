--/////////////////////////////////////////////////////////////////////////////////////////////////
--Hostile by Sidious Invader.
--Goes in DATA\SCRIPTS\GAMEOBJECT\
--Use <Lua_Script>FriendlyFire</Lua_Script>
--/////////////////////////////////////////////////////////////////////////////////////////////////

function Definitions()
    DebugMessage("%s -- In Definitions", tostring(Script))
    Define_State("State_Init", State_Init);
end

function State_Init(message)
    if message == OnEnter then
        if Object.Get_Owner().Is_Human() then
            Sleep(0.6)
            Object.Change_Owner(Find_Player("Sarlacc"))
        end
    end
    ScriptExit()
end
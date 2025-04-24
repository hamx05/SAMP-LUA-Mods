require"lib.moonloader"
require"lib.sampfuncs"



function main()
    while not isSampAvailable() do wait(100) end
    while true do wait(10)
        local result, target = getCharPlayerIsTargeting(playerHandle)
        if result then result, Id = sampGetPlayerIdByCharHandle(target) end
        if result then
            if isCharPlayingAnim(target, "KILL_Knife_Ped_Die") == true then
                if wasKeyPressed(VK_F) then
                    sampSendChat("/frisk "..Id)
                end
            end

            if isKeyDown(VK_LMENU) and wasKeyPressed(VK_F) then
                sampSendChat("/frisk "..Id)
            end
        end
    end
end
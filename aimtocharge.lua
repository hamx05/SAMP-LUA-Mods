script_name("aimtocharge")
script_author("Hammond")

require"lib.moonloader"
require"lib.sampfuncs"

function main()
    while not isSampAvailable() do wait(100) end
    sampAddChatMessage("{1d72f2}AimToCharge{FFFFFF} By Hammond - {1d72f2}[AIM+Z/AIM+X]",-1)
    while true do wait(10)
        local result, target = getCharPlayerIsTargeting(playerHandle)
        if result then result, Id = sampGetPlayerIdByCharHandle(target) end
        if result then
            if wasKeyPressed(VK_Z) then
                wait(3000)
                sampSendChat("/su "..Id.. " Possession of illegal firearms")
                wait(1000)
                sampSendChat("/su "..Id.. " Attempted murder")
                wait(1000)
                sampSendChat("/su "..Id.. " Discharge of firearm in public")
            end

            if wasKeyPressed(VK_X) then
                wait(3000)
                sampSendChat("/su "..Id.. " Attempted murder")
                wait(1000)
                sampSendChat("/su "..Id.. " Discharge of firearm in public")
            end
        end
    end
end
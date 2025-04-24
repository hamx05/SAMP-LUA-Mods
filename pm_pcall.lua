script_name("pm_call_script")
-- Original script by Boomie Maddox
-- Enhanced and modified by Hammond
-- Added /pcall functionality alongside the original /pm command

require "lib.moonloader"
require "lib.sampfuncs"

local sampev = require "lib.samp.events"
local playerNumbers = {}
local lastRequestedPlayerId = nil
local lastRequestedPlayerName = nil
local pendingCall = nil
local awaitingNumberResponse = false
local responseTimeout = 5000 -- 5 seconds timeout

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(100) end
    sampAddChatMessage("{00FF00}PM Script loaded by Boomie Maddox.", -1)
    sampAddChatMessage("{00FF00}Call Script loaded by Hammond.", -1)
    sampRegisterChatCommand("pm", handlePmCommand)
    sampRegisterChatCommand("pcall", handleCallCommand)
end

function handlePmCommand(params)
    local playerIdOrName, message = params:match("^(%S+) (.+)$")
    if playerIdOrName and message then
        if tonumber(playerIdOrName) then
            lastRequestedPlayerId = tonumber(playerIdOrName)
        else
            lastRequestedPlayerName = playerIdOrName
        end
        pendingMessage = message
        awaitingNumberResponse = true
        sampSendChat("/number " .. playerIdOrName)
        -- Set a timer to reset the awaitingNumberResponse flag after the timeout
        lua_thread.create(function()
            wait(responseTimeout)
            if awaitingNumberResponse then
                awaitingNumberResponse = false
                sampAddChatMessage("{FF0000}Timeout waiting for server response.", -1)
            end
        end)
    else
        sampAddChatMessage("{FF0000}Usage: /pm <playerId|playerName> <message>", -1)
    end
end

function sendSms(number, message)
    sampSendChat("/sms " .. number .. " " .. message)
end

function handleCallCommand(params)
    local playerIdOrName = params:match("^(%S+)$")
    if playerIdOrName then
        if tonumber(playerIdOrName) then
            lastRequestedPlayerId = tonumber(playerIdOrName)
        else
            lastRequestedPlayerName = playerIdOrName
        end
        awaitingNumberResponse = true
        sampSendChat("/number " .. playerIdOrName)
        -- Set a timer to reset the awaitingNumberResponse flag after the timeout
        lua_thread.create(function()
            wait(responseTimeout)
            if awaitingNumberResponse then
                awaitingNumberResponse = false
                sampAddChatMessage("{FF0000}Timeout waiting for server response.", -1)
            end
        end)
    else
        sampAddChatMessage("{FF0000}Usage: /pcall <playerId|playerName>", -1)
    end
end

function makeCall(number)
    sampSendChat("/call " .. number)
end

function sampev.onServerMessage(color, text)
    if awaitingNumberResponse then
        -- Check if the server message is a response to the /number command
        if text:match("^%* .+ %(%-?%d+%)$") then
            local number = text:match("%((%-?%d+)%)")
            if number then
                if lastRequestedPlayerId then
                    playerNumbers[lastRequestedPlayerId] = number
                elseif lastRequestedPlayerName then
                    playerNumbers[lastRequestedPlayerName] = number
                end
                if pendingMessage then
                    sendSms(number, pendingMessage)
                else
                    makeCall(number)
                end
                lastRequestedPlayerId = nil
                lastRequestedPlayerName = nil
                pendingMessage = nil
                awaitingNumberResponse = false
            else
                sampAddChatMessage("{FF0000}No matching player number found in the server message.", -1)
            end
        else
            sampAddChatMessage("{FF0000}Server message did not match expected format.", -1)
        end
    end

    return true
end

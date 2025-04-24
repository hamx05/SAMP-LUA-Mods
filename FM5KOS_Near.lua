script_name("FM5KOS Near")
script_author("Hammond")
-- Script Fixed by Alex Maisil

require"lib.moonloader"
require"lib.sampfuncs"
local ev = require "samp.events"

local factionMode = false
function main()
    while not isSampAvailable() do 
        wait(100) 
    end
	sampRegisterChatCommand("fm5kosnear", cmd_Mode)
	sampAddChatMessage("{1d72f2}AutoFM5andKOS{FFFFFF} By Hammond - {1d72f2}[AIM+R]",-1)
    while true do 
        wait(10)
        local result, target = getCharPlayerIsTargeting(playerHandle)
        if result then 
            result, Id = sampGetPlayerIdByCharHandle(target)
            if result then
				
				-- Faction Mode
				if factionMode then
					local isInInterior = getPlayerZoneName()
					if isInInterior == "Interior" then -- When inside interior
						if isCharPlayingAnim(target, "KILL_Knife_Ped_Die") then
							if wasKeyPressed(VK_R) then
								sampSendChat("/d B" .. Id .. " has been taken down inside interior. Pending charges!")
							end
						elseif wasKeyPressed(VK_R) then
							sampSendChat("/d B" .. Id .. " is FM5 inside interior!")
						end
						
					else -- When outside
						if isCharPlayingAnim(target, "KILL_Knife_Ped_Die") then
							if wasKeyPressed(VK_R) then
								sampSendChat("/d B" .. Id .. " has been taken down at " .. getPlayerZoneName()..". Pending charges!")
							end
						elseif wasKeyPressed(VK_R) then
							sampSendChat("/d B" .. Id .. " is FM5 at " .. getPlayerZoneName().."!")
						end
					end
				
				-- Family or Civilian Mode
				else
					local isInInterior = getPlayerZoneName()
					if isInInterior == "Interior" then -- When inside interior
						if isCharPlayingAnim(target, "KILL_Knife_Ped_Die") then
							if wasKeyPressed(VK_R) then
								sampSendChat("/pr B" .. Id .. " has been taken down inside interior. KOS completed!")
							end
						elseif wasKeyPressed(VK_R) then
							sampSendChat("/pr KOS B" .. Id .. "! Currently inside interior!")
						end
						
					else -- When outside
						if isCharPlayingAnim(target, "KILL_Knife_Ped_Die") then
							if wasKeyPressed(VK_R) then
								sampSendChat("/pr B" .. Id .. " has been taken down at " .. getPlayerZoneName()..". KOS completed!")
							end
						elseif wasKeyPressed(VK_R) then
							sampSendChat("/pr KOS B" .. Id .. "! Currently at " .. getPlayerZoneName().."!")
						end
					end
				end

            end
        end
    end
end

function ev.onServerMessage(c, s)
   	if c == -65366 and string.match(s, "MOTD:") then
        --if not factionMode then
            if string.match(s, "LSFMD MOTD:") or string.match(s, "LSPD MOTD:") or string.match(s, "FBI MOTD:") or string.match(s, "ARES MOTD:") or string.match(s, "SASD MOTD:") then
                factionMode = true
                lua_thread.create(function()
                    wait(50)
                    sampAddChatMessage("{ffffff}Auto FM5 - Faction Mode: {00ff18}Enabled.", 0xbbbbbb)
                end)
            
			else
				factionMode = false
				lua_thread.create(function()
					wait(50)
					sampAddChatMessage("{ffffff}Auto KOS - Family or Civilian Mode: {00ff18}Enabled.", 0xbbbbbb)
				end)
			end
    end
end

function cmd_Mode()
    factionMode = not factionMode
	if factionMode then
		sampAddChatMessage("{ffffff}Auto FM5 - Faction Mode: {00ff18}Enabled.", 0xbbbbbb)
    else
	    sampAddChatMessage("{ffffff}Auto KOS - Family or Civilian Mode: {00ff18}Enabled.", 0xbbbbbb)
	end
end

function getPlayerZoneName()
	local zoneName, zoneNames, customZoneNames = 'Unknown', {
		{'IWD','Idlewood'},
		{'JEF','Jefferson'},
		{'GAN','Ganton'},
		{'GANTB','Gant Bridge'},
		{'LIND','Willowfield'},
		{'LMEX','Little Mexico'},
		{'COM','Commerce'},
		{'VERO','Verona Beach'},
		{'MKT','Market'},
		{'MARKST','Market Station'},
		{'CONF','Conference Center'},
		{'BLUF','Verdant Bluffs'},
		{'LAIR','Los Santos International'},
		{'LA','Los Santos'},
		{'ELCO','El Corona'},
		{'PER1','Pershing Square'},
		{'MAR','Marina'},
		{'VIN','Vinewood'},
		{'ROD','Rodeo'},
		{'RIH','Richman'},
		{'SMB','Santa Maria Beach'},
		{'LDT','Downtown Los Santos'},
		{'GLN','Glen Park'},
		{'VISA','The Visage'},
		{'HGP','Harry Gold Parkway'},
		{'FRED','Frederick Bridge'},
		{'RED','Red County'},
		{'FISH','Fisher\'s Lagoon'},
		{'MONT','Montgomery'},
		{'MONINT','Montgomery Intersection'},
		{'MUL','Mulholland'},
		{'MULINT','Mulholland Intersection'},
		{'SUN','Temple'},
		{'ELS','East Los Santos'},
		{'CHC','Las Colinas'},
		{'LDOC','Ocean Docks'},
		{'DILLI','Dillimore'},
		{'TOPFA','Hilltop Farm'},
		{'FARM','The Farm'},
		{'FLINTR','Flint Range'},
		{'FLINW','Flint Water'},
		{'FLINTC','Flint County'},
		{'FLINTI','Flint Intersection'},
		{'LEAFY','Leafy Hollow'},
		{'BACKO','Back O Beyond'},
		{'WHET','Whetstone'},
		{'CREEK','Shady Creeks'},
		{'MTCHI','Mount Chiliad'},
		{'ANGPI','Angel Pine'},
		{'LSINL','Los Santos Inlet'},
		{'SAN_AND','San Andreas'},
		{'BLUEB','Blueberry'},
		{'BLUAC','Blueberry Acres'},
		{'PANOP','The Panopticon'},
		{'EBAY','Easter Bay Chemicals'},
		{'FERN','Fern Ridge'},
		{'PALO','Palomino Creek'},
		{'HANKY','Hankypanky Point'},
		{'SASO','San Andreas Sound'},
		{'HAUL','Fallen Tree'},
		{'SF','San Fierro'},
		{'VE','Las Venturas'},
		{'SFAIR','Easter Bay Airport'},
		{'ETUNN','Easter Tunnel'},
		{'SILLY','Foster Valley'},
		{'HILLP','Missionary Hill'},
		{'CUNTC','Avispa Country Club'},
		{'OCEAF','Ocean Flats'},
		{'HASH','Hashbury'},
		{'GARC','Garcia'},
		{'DOH','Doherty'},
		{'CRANB','Cranberry Station'},
		{'EASB','Easter Basin'},
		{'SFDWT','Downtown'},
		{'THEA','King\'s'},
		{'WESTP','Queens'},
		{'CITYS','City Hall'},
		{'BAYV','Palisades'},
		{'CIVI','Santa Flora'},
		{'JUNIHI','Juniper Hill'},
		{'JUNIHO','Juniper Hollow'},
		{'ESPN','Esplanade North'},
		{'ESPE','Esplanade East'},
		{'KINC','Kincaid Bridge'},
		{'GARV','Garver Bridge'},
		{'BATTP','Battery Point'},
		{'GANTB','Gant Bridge'},
		{'CALT','Calton Heights'},
		{'FINA','Financial'},
		{'CHINA','Chinatown'},
		{'PARA','Paradiso'},
		{'MAKO','The Mako Span'},
		{'RIE','Randolph Industrial Estate'},
		{'JTS','Julius Thruway South'},
		{'JTE','Julius Thruway East'},
		{'JTW','Julius Thruway West'},
		{'JTN','Julius Thruway North'},
		{'RSE','Rockshore East'},
		{'RSW','Rockshore West'},
		{'LDM','Last Dime Motel'},
		{'BFLD','Blackfield'},
		{'BINT','Blackfield Intersection'},
		{'BFC','Blackfield Chapel'},
		{'DRAG','The Four Dragons Casino'},
		{'SRY','Sobell Rail Yards'},
		{'LST','Linden Station'},
		{'LINDEN','Linden Station'},
		{'QUARY','Hunter Quarry'},
		{'FALLO','Fallow Bridge'},
		{'LDS','Linden Side'},
		{'CAM','The Camel\'s Toe'},
		{'LOT','Come-A-Lot'},
		{'STRIP','The Strip'},
		{'HIGH','The High Roller'},
		{'PINK','The Pink Swan'},
		{'ROY','Royal Casino'},
		{'CALI','Caligula\'s Palace'},
		{'PILL','Pilgrim'},
		{'STAR','Starfish Casino'},
		{'OVS','Old Venturas Strip'},
		{'RING','The Clown\'s Pocket'},
		{'CREE','Creek'},
		{'ROCE','Roca Escalante'},
		{'ISLE','The Emerald Isle'},
		{'REDE','Redsands East'},
		{'REDW','Redsands West'},
		{'GGC','Greenglass College'},
		{'KACC','K.A.C.C. Military Fuels'},
		{'ELCA','El Castillo Del Diablo'},
		{'PAYAS','Las Payasadas'},
		{'ROBAD','Tierra Robada'},
		{'BYTUN','Bayside Tunnel'},
		{'REST','Area 69'},
		{'WWE','Whitewood Estates'},
		{'VAIR','Las Venturas Airport'},
		{'SPIN','Spinybed'},
		{'PRP','Prickle Pine'},
		{'PALMS','Green Palms'},
		{'OCTAN','Octane Springs'},
		{'PROBE','Lil\' Probe Inn'},
		{'CARSO','Fort Carson'},
		{'BIGE','The Big Ear'},
		{'TOM','Regular Tom'},
		{'BRUJA','Las Brujas'},
		{'ARCO','Arco Del Oeste'},
		{'DAM','The Sherman Dam'},
		{'SHERR','Sherman Reservoir'},
		{'BARRA','Las Barrancas'},
		{'MART','Martin Bridge'},
		{'ROBINT','Robada Intersection'},
		{'ELQUE','El Quebrados'},
		{'ALDEA','Aldea Malvada'},
		{'SUNMA','Bayside Marina'},
		{'SUNNN','Bayside'},
		{'SANB','San Fierro Bay'},
		{'YBELL','Yellow Bell Golf Course'},
		{'PINT','Pilson Intersection'},
		{'PIRA','Pirates In Men\'s Pants'},
		{'LVA','LVA Freight Depot'},
		{'BONE','Bone County'},
		{'MEAD','Verdant Meadows'},
		{'PLS','Playa Del Seville'},
		{'EBE','East Beach'},
		{'LFL','Los Flores'},
		{'NROCK','North Rock'},
		{'UNITY','Unity Station'}
	},
	{
		{"Castille Island", 3138.7588, -2248.6106, -63.2630, 3530.0903, -1922.0083, 343.3367},
		{"ARES Garage", 2204.1096, 2411.6570, -13.5870, 2329.5793, 2512.3259, 0.4885},
		{"FBI Garage", 248.1156, -1549.7271, 22.9225, 370.9664, -1456.6969, 30.3469},
		{"Saints Hospital. Market", 1100, -1440, 10, 1270, -1240, 140},
		{"County Hospital. Jefferson", 1960, -1490, 10, 2140, -1310, 160}
	}

	local x, y, z = getCharCoordinates(playerPed)
	local zoneName = getNameOfZone(x, y, z)
	for k, v in pairs(zoneNames) do
		if zoneName == v[1] and string.find(zoneName, v[1]) then
			zoneName = v[2]
			break
		end
	end
	if getActiveInterior() ~= 0 then
		zoneName = 'Interior'
	end
	for i, v in ipairs(customZoneNames) do
        if (x >= v[2]) and (y >= v[3]) and (z >= v[4]) and (x <= v[5]) and (y <= v[6]) and (z <= v[7]) then
            zoneName = v[1]
        end
    end
	return zoneName
end
-----------------------------------------------------------
--[[Original ###vrp_carjcaking### Script BY NéNé(mikou)]]--
-----------------------------------------------------------

--[[ List of vehicle class
0: Compacts
1: Sedans
2: SUVs
3: Coupes
4: Muscle
5: Sports Classics
6: Sports
7: Super
8: Motorcycles
9: Off-road
10: Industrial
11: Utility
12: Vans
13: Cycles
14: Boats
15: Helicopters
16: Planes
17: Service
18: Emergency
19: Military
20: Commercial
21: Trains
-Souce-> https://runtime.fivem.net/doc/natives/#_0x29439776AAA00A62 ]]

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_carjacking")


local notif = false

--[!!!Only set one boolean true at once!!!]--
                                           --
-------------[use a group/job]---------------
local useGroup = false                     --
---------------------------------------------
                                           --
-----------[use permission]------------------
local usePermission = false                --
---------------------------------------------
                                           --
-------[use multiples permissions]-----------
local useMultiplesPermissions = false      --
---------------------------------------------
                                           --
------------[no permissions]-----------------
local noPermission = true                  --
---------------------------------------------


--------------------[check player group]-----------------------
if useGroup then                                             --
-------------------------[config]------------------------------
local group = "Deal weed" --add your group(job) here         --
---------------------------------------------------------------
RegisterServerEvent('perm:carjacking')                       --
AddEventHandler('perm:carjacking', function()                --
local user_id = vRP.getUserId({source})                      --
    if(user_id)then                                          --
      if vRP.hasGroup({user_id,group})  then                 --
         local perm = true                                   --
         TriggerClientEvent('carjacking_perm:OK',source,perm)--
      else                                                   --
         local perm = false                                  --
         TriggerClientEvent('carjacking_perm:OK',source,perm)--
      end                                                    --
    end                                                      --
end)                                                         --
end                                                          --
---------------------------------------------------------------

------------------------[check player permission]--------------------------
if usePermission then                                                    --
-----------------------------[config]--------------------------------------
local permission = "mission.weedseller.weed" --add your permission here  --
---------------------------------------------------------------------------
RegisterServerEvent('perm:carjacking')                                   --
AddEventHandler('perm:carjacking', function()                            --
local user_id = vRP.getUserId({source})                                  --
    if(user_id)then                                                      --
      if vRP.hasPermission({user_id,permission})  then                   --
         local perm = true                                               --
         TriggerClientEvent('carjacking_perm:OK',source,perm)            --
      else                                                               --
         local perm = false                                              --
         TriggerClientEvent('carjacking_perm:OK',source,perm)            --
      end                                                                --
    end                                                                  --
end)                                                                     --
end                                                                      --
---------------------------------------------------------------------------

---------------------------------------[check player multiples permission]----------------------------------------
if useMultiplesPermissions then                                                                                 --
---------------------------[config]-------------------------------------------------------------------------------
local permissions = "mission.weedseller.weed","emergency.market","drugseller.market" --add your permissions here--
------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('perm:carjacking')                                                                          --
AddEventHandler('perm:carjacking', function()                                                                   --
local user_id = vRP.getUserId({source})                                                                         --
    if(user_id)then                                                                                             --
      if vRP.hasPermission({user_id,permissions})  then                                                         --
         local perm = true                                                                                      --
         TriggerClientEvent('carjacking_perm:OK',source,perm)                                                   --
      else                                                                                                      --
         local perm = false                                                                                     --
         TriggerClientEvent('carjacking_perm:OK',source,perm)                                                   --
      end                                                                                                       --
    end                                                                                                         --
end)                                                                                                            --
end                                                                                                             --
------------------------------------------------------------------------------------------------------------------

---------------------[set no permission]-----------------------
if noPermission then                                         --
RegisterServerEvent('perm:carjacking')                       --
AddEventHandler('perm:carjacking', function()                --
local perm = true                                            --
local noLoop = true                                          --
TriggerClientEvent('carjacking_perm:OK',source,perm,noLoop)  --
end)                                                         --
end                                                          --
---------------------------------------------------------------

RegisterServerEvent('deposit_ok:give')
AddEventHandler('deposit_ok:give', function(Class,Damage)
local user_id = vRP.getUserId({source})

  if(user_id)then
     Wait(2500)

     if Class == 0 then
            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(6000,11000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 1 then

             vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(4000,8000)*Damage),1})
             vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 2 then

            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(9000,15000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 3 then

           vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(6000,11000)*Damage),1})
           vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 4 then

            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(8000,13000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 5 then

            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(12000,20000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 6 then

            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(9000,16000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 7 then

            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(25000,35000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 8 then

            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(6000,9000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 9 then

            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(5000,10000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})

     elseif Class == 12 then

            vRP.giveInventoryItem({user_id,"dirty_money",math.floor(math.random(1500,6000)*Damage),1})
            vRP.varyExp({user_id,"criminel","braquage",2})
     end

  end

end)

local mapZones = {AIRP = "Los Santos International Airport",ALAMO = "Alamo Sea",ALTA = "Alta",ARMYB = "Fort Zancudo",BANHAMC = "Banham Canyon Dr",BANNING = "Banning",BEACH = "Vespucci Beach",BHAMCA = "Banham Canyon",BRADP = "Braddock Pass",BRADT = "Braddock Tunnel",BURTON = "Burton",CALAFB = "Calafia Bridge",CANNY = "Raton Canyon",CCREAK = "Cassidy Creek",CHAMH = "Chamberlain Hills",CHIL = "Vinewood Hills",CHU = "Chumash",CMSW = "Chiliad Mountain State Wilderness",CYPRE = "Cypress Flats",DAVIS = "Davis",DELBE = "Del Perro Beach",DELPE = "Del Perro",DELSOL = "La Puerta",DESRT = "Grand Senora Desert",DOWNT = "Downtown",DTVINE = "Downtown Vinewood",EAST_V = "East Vinewood",EBURO = "El Burro Heights",ELGORL = "El Gordo Lighthouse",ELYSIAN = "Elysian Island",GALFISH = "Galilee",GOLF = "GWC and Golfing Society",GRAPES = "Grapeseed",GREATC = "Great Chaparral",HARMO = "Harmony",HAWICK = "Hawick",HORS = "Vinewood Racetrack",HUMLAB = "Humane Labs and Research",JAIL = "Bolingbroke Penitentiary",KOREAT = "Little Seoul",LACT = "Land Act Reservoir",LAGO = "Lago Zancudo",LDAM = "Land Act Dam",LEGSQU = "Legion Square",LMESA = "La Mesa",LOSPUER = "La Puerta",MIRR = "Mirror Park",MORN = "Morningwood",MOVIE = "Richards Majestic",MTCHIL = "Mount Chiliad",MTGORDO = "Mount Gordo",MTJOSE = "Mount Josiah",MURRI = "Murrieta Heights",NCHU = "North Chumash",NOOSE = "N.O.O.S.E",OCEANA = "Pacific Ocean",PALCOV = "Paleto Cove",PALETO = "Paleto Bay" ,PALFOR = "Paleto Forest",PALHIGH = "Palomino Highlands",PALMPOW = "Palmer-Taylor Power Station",PBLUFF = "Pacific Bluffs",PBOX = "Pillbox Hill"  ,PROCOB = "Procopio Beach",RANCHO = "Rancho"  ,RGLEN = "Richman Glen",RICHM = "Richman" ,ROCKF = "Rockford Hills",RTRAK = "Redwood Lights Track",SANAND = "San Andreas" ,SANCHIA = "San Chianski Mountain Range",SANDY = "Sandy Shores" ,SKID = "Mission Row" ,SLAB = "Stab City"  ,STAD = "Maze Bank Arena",STRAW = "Strawberry" ,TATAMO = "Tataviam Mountains",TERMINA = "Terminal",TEXTI = "Textile City",TONGVAH = "Tongva Hills",TONGVAV = "Tongva Valley",VCANA = "Vespucci Canals" ,VESP = "Vespucci"  ,VINE = "Vinewood",WINDF = "Ron Alternates Wind Farm",WVINE = "West Vinewood"  ,ZANCUDO = "Zancudo River" ,ZP_ORT = "Port of South Los Santos",ZQ_UAR = "Davis Quartz"}

RegisterServerEvent('descendre_ok:veh')
AddEventHandler('descendre_ok:veh', function()
local user_id = vRP.getUserId({source})
local player = vRP.getUserSource({user_id})
   if(user_id)then
     if not notif then
      vRPclient.notifyPicture(player,{"CHAR_BLOCKED",4, "Infos", "","~y~Vas voir le receleur pour avoir ton ~g~argent~y~."}) --get out
      notif = true
     end
   end
end)

RegisterServerEvent('taff_ok:veh')
AddEventHandler('taff_ok:veh', function()
local user_id = vRP.getUserId({source})
local player = vRP.getUserSource({user_id})
   if(user_id)then
      vRPclient.notifyPicture(player,{"CHAR_JOE",4, "Receleur", "Vous dit...",'"~g~Beau boulot! Reviens quand tu veux."'})--good job
      notif = false
   end
end)

RegisterServerEvent('flic_notok:veh')
AddEventHandler('flic_notok:veh', function()
local user_id = vRP.getUserId({source})
local player = vRP.getUserSource({user_id})
   if(user_id)then
       vRPclient.notifyPicture(player,{"CHAR_JOE",4, "Receleur", "Vous dit...",'"~w~Sémes les ~r~flics ~w~et reviens."'})--must clear your wanted level
   end
end)

RegisterServerEvent('Timer')
AddEventHandler('Timer', function(Despawn_veh)
countdown = Despawn_veh
TriggerClientEvent('sharedTimer',-1, countdown)
end)

RegisterServerEvent('vehID')
AddEventHandler('vehID', function(VehID)
V_ID = VehID
TriggerClientEvent('sharedVID',-1, V_ID)
end)

RegisterServerEvent('getmodel')
AddEventHandler('getmodel', function(vehmodel)
model = vehmodel
TriggerClientEvent('sharedModel',-1,model)
end)

RegisterServerEvent('Vehdespawn')
AddEventHandler('Vehdespawn', function()
TriggerClientEvent('despawnFunc',-1)
end)

RegisterServerEvent('CopsAlert')
AddEventHandler('CopsAlert', function(x,y,z,zone)
 robZone = mapZones[zone]
 vRP.sendServiceAlert({nil,"police",x,y,z,"Un carjacking est en cours à ~y~"..robZone.."."})
end)
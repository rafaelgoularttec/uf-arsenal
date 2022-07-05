UFclient = {}
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
UFserver = Tunnel.getInterface(GetCurrentResourceName())
Tunnel.bindInterface(GetCurrentResourceName(), UFclient)
Proxy.addInterface(GetCurrentResourceName(), UFclient)

gScriptArmas = Tunnel.getInterface("armas")

local cfg = module(GetCurrentResourceName(),"config/uf_cfg")

RegisterNUICallback("select", function(data) 
    TransitionFromBlurred(100)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "close"
    })
    UFserver.giveWeapon(data.item)
end)

RegisterNUICallback("guardar", function(data)
    TransitionFromBlurred(100)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "close"
    }) 
    UFserver.guardar()
end)

RegisterNUICallback("close", function(data) 
    TransitionFromBlurred(100)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "close"
    })
end)

Citizen.CreateThread(function()
    SetNuiFocus(false, false)
    while true do
        local msec = 1000 
        local ped = PlayerPedId() 
        local cds = GetEntityCoords(ped)   
        for i =1,#cfg.locais do 
            local dist = #(cds - cfg.locais[i])
            if dist < 5.0 then 
                msec = 4 
                DrawMarker(27,cfg.locais[i],0,0,0,0,180.0,130.0,0.5,0.5,0.5,160, 14, 14,100,0,0,0,0)
                if dist < 2.5 then 
                    if IsControlJustPressed(0, 38) then 
                       if UFserver.hasPermission() then 
                            TransitionToBlurred(100)
                            SetNuiFocus(true, true)
                            SendNUIMessage({
                                action = "show"
                            })
                       end
                    end 
                end
            end
        end 
        Citizen.Wait(msec)     
    end
end)
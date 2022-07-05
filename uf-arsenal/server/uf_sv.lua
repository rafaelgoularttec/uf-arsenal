mapreedev = {}
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())
Tunnel.bindInterface(GetCurrentResourceName(), mapreedev)

local cfg = module(GetCurrentResourceName(),"config/uf_cfg")

function mapreedev.giveWeapon(weapon)
    for k,v in pairs(cfg.items) do
        if weapon == v.name then
            if v.name == "Colete" then
                vRPclient.setArmour(source,100)
            else
                vRPclient.giveWeapons(source,{[v.idname] = { ammo = v.ammo }})
            end
        end
    end
end

function mapreedev.guardar()
    vRPclient.replaceWeapons(source,{})
    vRPclient.setArmour(source, 0)
end

function mapreedev.hasPermission()
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        -- if vRP.hasPermission(user_id,"policia.permissao") then    -- SE A SUA BASE FOR VRPEX USE ESSE MODELO
        if vRP.hasPermission(user_id,"Police") then  -- SE A SUA BASE FOR CREATIVE USE ESSE MODELO
		return true
        end
        return false
	end
end
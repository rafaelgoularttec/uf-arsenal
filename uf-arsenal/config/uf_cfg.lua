UF_CONFIG = {}


UF_CONFIG.locais = {
        -- AQUI VAI AS LOCALIZAÇÕES DOS LOCAIS NAS DELEGACIAS QUE TERAM ACESSO
        [1] = vec3( -948.08, -2042.23, 9.41  ), -- 
        [2] = vec3( 1569.85, 839.76, 81.3 ), --
        [3] = vec3( 2919.22, 4176.58, 52.51 )

}

-- AQUI SÃO AS INFORMAÇÕES DOS ITENS QUE VC COLOCAR NA NUI!
UF_CONFIG.items = {
["Combat Shotgun"] = {name = "Combat Shotgun",idname = "WEAPON_PUMPSHOTGUN", ammo = 100},
["Combat PDW"] = {name = "Combat PDW",idname = "WEAPON_COMBATPDW", ammo = 200},
["Carabine Rifle"]  = {name = "Carabine Rifle", idname = "WEAPON_CARBINERIFLE", ammo = 200},
["Taser"]  = { name = "Taser",idname = "WEAPON_STUNGUN", ammo = 1},
["Heavy-Pistol"] = { name = "Heavy-Pistol",idname = "WEAPON_HEAVYPISTOL", ammo = 200},
["Combat Pistol"] = { name = "Combat Pistol", idname = "WEAPON_COMBATPISTOL", ammo = 200},
["Lanterna"] = { name = "Lanterna", idname = "WEAPON_FLASHLIGHT", ammo = 1},
["Cassetete"] = {name = "Cassetete",idname = "WEAPON_NIGHTSTICK", ammo = 1},
["AP Pistol"] = {name = "AP Pistol",idname = "WEAPON_APPISTOL", ammo = 200},
["Colete"] = {name = "Colete",idname = "Colete", ammo = 1},
["Radio"] = {name = "Radio",idname = "Radio", amount = 1},
}

return UF_CONFIG
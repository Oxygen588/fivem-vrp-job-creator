local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")
nS = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "oxy_inceput")
nC = Tunnel.getInterface("oxy_inceput", "oxy_inceput")
Tunnel.bindInterface("oxy_inceput", nS)
Proxy.addInterface("oxy_inceput", nS)

ServerCallbacks = {}

RegisterServerEvent(GetCurrentResourceName() .. ':triggerServerCallback')
AddEventHandler(GetCurrentResourceName() .. ':triggerServerCallback', function(name, requestId, ...)
    local playerId = source

    TriggerServerCallback(name, requestId, playerId, function(...)
        TriggerClientEvent(GetCurrentResourceName() .. ':serverCallback', playerId, requestId, ...)
    end, ...)
end)

function RegisterServerCallback(name, cb)
    ServerCallbacks[name] = cb
end

function TriggerServerCallback(name, requestId, source, cb, ...)
    if ServerCallbacks[name] then
        ServerCallbacks[name](source, cb, ...)
    end
end

RegisterServerEvent("finishjob_oxy")
AddEventHandler("finishjob_oxy", function(cat)
    id = vRP.getUserId({ source })
    vRP.giveMoney({ id, cat })
end)


RegisterServerCallback('getore', function(source, cb)
    local source = source
    cb(vRP.getUserHoursPlayed({ vRP.getUserId({ source }) }))
end)

RegisterServerEvent("sugiplvaloareoieiinguracutoatamana")
AddEventHandler("sugiplvaloareoieiinguracutoatamana", function(ce,ptcat)
    id = vRP.getUserId({ source })
    if vRP.tryGetInventoryItem({ id, ce, 1, true }) then
        vRP.giveMoney({id,ptcat})
    end
end)

RegisterServerEvent("finishjob_oxy1")
AddEventHandler("finishjob_oxy1", function(cat,cat2,cat3)
    id = vRP.getUserId({ source })
    if vRP.tryFullPayment({id,cat}) then
        vRP.giveInventoryItem({id,cat3,cat2,true})
    end
end)

RegisterServerCallback('getinventory', function(source, cb)
    local invData = vRP.getUserDataTable { vRP.getUserId({ source }) }.inventory
    print(json.encode(invData))
    cb(invData)
end)

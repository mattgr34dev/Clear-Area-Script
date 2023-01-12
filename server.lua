    local src = source
    local player = source
    local x, y, z = GetEntityCoords(GetPlayerPed(player), true)
    RegisterNetEvent('ca:clarea')
        AddEventHandler('ca:clarea', function(x, y, z, radius)
            ClearArea(x, y, z, Config.Radius, true, Config.IgnoreCopCars, Config.IgnoreOjects, false)
            ClearAreaOfObjects(x, y, z, Config.Radius, 1)
    end)

RegisterCommand('clarea', function (src, args, rawCommand)
    if source > 0 then
        TriggerEvent('ca:clarea', x, y, z)
        TriggerClientEvent('QBCore:Notify', src, Lang:t('success.notify'), 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.notify'), 'error')
    end
end, false)

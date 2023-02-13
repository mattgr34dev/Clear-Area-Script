local radius = 0

function ca:clarea(x, y, z)
    ClearArea(x, y, z, radius, true, Config.IgnoreCopCars, Config.IgnoreOjects, false) 
end

RegisterCommand('clarea', function (src, args)
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
    radius = tonumber(args[1])

    if source > 0 then
        ca:clarea(x, y, z)
        TriggerClientEvent('QBCore:Notify', src, Lang:t('success.notify'), 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.notify'), 'error')
    end
end, false)

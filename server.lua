Citizen.CreateThread(function ()   
    RegisterNetEvent('clarea')
        AddEventHandler('clareafunction', function(...)
            ClearArea(0, 0, 0, Config.Radius, true, Config.IgnoreCopCars, Config.IgnoreOjects, false)
    end)

end)

RegisterCommand('clarea', 'Очистка зоны (можно для всех)', function (src, args)
    if source > 0 then
        TriggerServerEvent('clarea')
        TriggerClientEvent('QBCore:Notify', src, Lang:t('success.notify'), 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.notify'), 'error')
    end
end)

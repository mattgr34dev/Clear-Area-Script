Citizen.CreateThread(function ()   
    RegisterNetEvent('clarea')
        AddEventHandler('clareafunction', function(...)
            ClearArea(0, 0, 0, 100, true, false, false, false)
    end)

end)

RegisterCommand('clarea', function (source, args)
    if source > 0 then
        TriggerServerEvent('clarea')
    else
        TriggerServerEvent('clarea')
    end
end)

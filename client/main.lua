function ShowNUI() 
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openmenu",
        data = ""
    })
end

-- NUI Callbacks --
RegisterNUICallback('close', function (data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)
    
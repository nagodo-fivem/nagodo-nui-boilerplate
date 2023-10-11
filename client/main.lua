local translationsSet = false

function ShowNUI() 
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openmenu",
        data = ""
    })
end

function SetTranslations()
    if not translationsSet then
        SendNUIMessage({
            action = "setTranslations",
            data = Locale[Config.Language]
        })
        translationsSet = true
    end
end

-- NUI Callbacks --
RegisterNUICallback('close', function (data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)
    
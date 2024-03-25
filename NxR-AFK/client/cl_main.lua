lib.registerContext({
    id = 'NxR:AFKMenu',
    title = 'Menu AFK',
    options = {
        {
            title = "AFK - 2H",
            onSelect = function()
                AFK2H()
            end
        }
    }
})

function AFK2H()
    if not afk then

        local player = PlayerPedId()
        local PlayerName = GetPlayerName(PlayerId())
        afk = true
        time = Config.maxtime2h

        SetEntityCoords(player, Config.ZoneAFK.x, Config.ZoneAFK.y, Config.ZoneAFK.z)

        if time > 0 then
            if time == math.ceil(Config.maxtime2h / 2) then
                TriggerEvent("chatMessage", "[ AFK ]", {255, 0, 0}, "Il vous reste 1H d'AFK")
            end
            if time == math.ceil(Config.maxtime2h / 4) then
                TriggerEvent("chatMessage", "[ AFK ]", {255, 0, 0}, "Il vous reste 30 Minutes d'AFK")
            end
            if time == math.ceil(Config.maxtime2h / 8) then
                TriggerEvent("chatMessage", "[ AFK ]", {255, 0, 0}, "Il vous reste 15 Minutes d'AFK")
            end
            time = time - 1
        else
            TriggerEvent("chatMessage", "[ AFK ]", {255, 0, 0}, "AFK Fini !")
            SetEntityCoords(player, Config.ZoneSafe.x, Config.ZoneSafe.y, Config.ZoneSafe.z)
            end
        end
    end

RegisterNetEvent('OpenAFKMenu')
AddEventHandler('OpenAFKMenu', function()
    lib.showContext('NxR:AFKMenu')
end)

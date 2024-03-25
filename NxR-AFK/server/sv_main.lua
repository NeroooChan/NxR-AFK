RegisterCommand('afk', function(source, args, rawCommand)
    if (source > 0) then
        TriggerClientEvent('OpenAFKMenu', source)
    end
end, false)
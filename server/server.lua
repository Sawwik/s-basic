RegisterCommand('teleport', function(source, args) -- 'teleport' you must put in the chat to teleport. Example: /teleport 123 456 789.
    if source == 0 then
        print('Tento příkaz může spustit pouze hráč.')
        return
    end

    local x, y, z = tonumber(args[1]), tonumber(args[2]), tonumber(args[3])

    if not x or not y or not z then
        TriggerClientEvent('chat:addMessage', source, { args = { '^1Chyba', 'Použití: /teleport [x] [y] [z]' } })
        return
    end

    TriggerClientEvent('teleportPlayer', source, x, y, z)
end)

RegisterCommand('cube', function(source) -- 'cube' is command in the chat to trigger random cube number.
    if source == 0 then
        print('Tento příkaz může spustit pouze hráč.')
        return
    end
    local number = math.random(6)
    TriggerClientEvent('chat:addMessage', source, { args = { '^5Číslo: ', number } })
end)

RegisterCommand('coin', function(source) -- 'coin' is command in the chat to trigger coin flip.
    if source == 0 then
        print('Tento příkaz může spustit pouze hráč.')
        return
    end
    local table = {"pana", "orel"}
    local randomIndex = math.random(1, #table)
    local randomValue = table[randomIndex]
    
    TriggerClientEvent('chat:addMessage', source, { args = { '^5Strana: ', randomValue } })
end)

local playerPed = PlayerPedId()

RegisterCommand('getcoords', function(source)
    local Coords = GetEntityCoords(playerPed)
    print("Your coords are: " ..Coords.x.. " " ..Coords.y.. " " ..Coords.z)
end, false)

RegisterNetEvent('teleportPlayer')
AddEventHandler('teleportPlayer', function(x, y, z)
    SetEntityCoords(PlayerPedId(), x, y, z, false, false, false, true)
end)

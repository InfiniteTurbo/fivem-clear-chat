RegisterCommand("clearchat", function(source, args) 
    if IsPlayerAceAllowed(source, "chat.clear") then
        TriggerClientEvent("chat:clear", -1)
        Citizen.Wait(5)
        TriggerClientEvent('chatMessage', -1, "^0[^4ADMIN^0]^2 An administrator has cleared the chat.")
        Print("A player with an ID of " .. source .. " has cleared the chat! Name: " .. GetPlayerName(source))
    else 
        TriggerClientEvent('chatMessage', -1, "^0[^1ERROR^0] ^4You do not have access to use this command.")
        print("A player attempted to clear the chat, but didn’t have the correct permissions set. The ID of the player is " .. source .. " and the name is " .. GetPlayerName(source))
    end
end, false)






print("FiveM Clear Chat has loaded! Thanks for purchasing from Turbo Modifications.")

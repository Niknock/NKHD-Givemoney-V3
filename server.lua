ESX = nil

if Config.ESX == 'old' then
	TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
	else
	ESX = exports["es_extended"]:getSharedObject()
end

--Give Money--

RegisterCommand("givemoney", function(source, args, rawCommand)
	xAdmin = ESX.GetPlayerFromId(args[1])
	local xPlayer
	
	if args[1] == "me" then
		xPlayer = ESX.GetPlayerFromId(source)
	else
		xPlayer = ESX.GetPlayerFromId(args[1])
	end

	if xAdmin == nil then

	else

		xGroup = xAdmin.getGroup()
		xGroupAdmin = Config.AdminGroups

	end

	if xGroup == xGroupAdmin then

	if xPlayer == nil then

		TriggerClientEvent("esx:showNotification", source, "~r~ID: "..args[1].. _U('id_not_found'))

	else if xGroup == xGroupAdmin then

		if Config.OxInventory == false then
			xPlayer.addMoney(args[2])
			TriggerClientEvent("esx:showNotification", source, _U('givemoney_id') ..args[1].." " ..args[2].. Config.Currency)
		else
			xPlayer.addInventoryItem(Config.OxInventoryItem, args[2])
			TriggerClientEvent("esx:showNotification", source, _U('givemoney_id') ..args[1].." " ..args[2].. Config.Currency)
		end
	end
	end
end

	if xGroup ~= xGroupAdmin then

		TriggerClientEvent("esx:showNotification", source, _U('no_rights'))

	end

end)

--Remove Money--

RegisterCommand("removemoney", function(source, args, rawCommand)
	xAdmin = ESX.GetPlayerFromId(args[1])
	local xPlayer
	
	if args[1] == "me" then
		xPlayer = ESX.GetPlayerFromId(source)
	else
		xPlayer = ESX.GetPlayerFromId(args[1])
	end

	if xAdmin == nil then

	else

		xGroup = xAdmin.getGroup()
		xGroupAdmin = Config.AdminGroups

	end

	if xGroup == xGroupAdmin then

	if xPlayer == nil then

		TriggerClientEvent("esx:showNotification", source, "~r~ID: "..args[1].. _U('id_not_found'))

	else if xGroup == xGroupAdmin then

		if Config.OxInventory == false then
			xPlayer.removeMoney(args[2])
			TriggerClientEvent("esx:showNotification", source, _U('removemoney_id') ..args[1].." " ..args[2].. Config.Currency)
		else
			xPlayer.removeInventoryItem(Config.OxInventoryItem, args[2])
			TriggerClientEvent("esx:showNotification", source, _U('givemoney_id') ..args[1].." " ..args[2].. Config.Currency)
		end
	end
	end
end

	if xGroup ~= xGroupAdmin then

		TriggerClientEvent("esx:showNotification", source, _U('no_rights'))

	end

end)
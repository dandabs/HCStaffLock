local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local remoteEvent = ReplicatedStorage:WaitForChild("ServerStatusEvent")
 
local ceoid = 255
local executiveid = 254
local managerid = 200
local devid = 150
local seniorstaffid = 125
local staffrankid = 110
local helperrankid = 100
local premiumrankid = 3
local investorrankid = 5
 
Players.PlayerAdded:Connect(function(player)
   
    if game.ServerStorage.ServerStatus.Value == 0 then -- staff
       
            if player:GetRankInGroup(4430859) ~= devid and player:GetRankInGroup(4430859) ~= ceoid and player:GetRankInGroup(4430859) ~= staffrankid and player:GetRankInGroup(4430859) ~= helperrankid and player:GetRankInGroup(4430859) ~= seniorstaffid and player:GetRankInGroup(4430859) ~= managerid and player:GetRankInGroup(4430859) ~= executiveid then
                player:Kick("Sorry, only staff can join at this time.")
            end
           
    end
   
    if game.ServerStorage.ServerStatus.Value == 1 then -- staff
       
           if player:GetRankInGroup(4430859) ~= devid and player:GetRankInGroup(4430859) ~= ceoid and player:GetRankInGroup(4430859) ~= investorrankid and player:GetRankInGroup(4430859) ~= premiumrankid and player:GetRankInGroup(4430859) ~= staffrankid and player:GetRankInGroup(4430859) ~= helperrankid and player:GetRankInGroup(4430859) ~= seniorstaffid and player:GetRankInGroup(4430859) ~= managerid and player:GetRankInGroup(4430859) ~= executiveid then
               player:Kick("Only premium members can join at this time.")
           end
           
    end
   
end)
 
Players.PlayerAdded:Connect(function(player)
   
        player.Chatted:Connect(function(msg)
       
        if player:GetRankInGroup(4430859) == devid or player:GetRankInGroup(4430859) == ceoid or player:GetRankInGroup(4430859) == staffrankid or player:GetRankInGroup(4430859) == seniorstaffid or player:GetRankInGroup(4430859) == managerid or player:GetRankInGroup(4430859) == executiveid then
           
            if msg == "/staff" then
       
                game.ServerStorage.ServerStatus.Value = 0
                   
            end
           
            if msg == "/premium" then
       
                game.ServerStorage.ServerStatus.Value = 1
                   
            end
           
            if msg == "/players" then
       
                game.ServerStorage.ServerStatus.Value = 2
                   
            end
           
        end
       
    end)
   
end)
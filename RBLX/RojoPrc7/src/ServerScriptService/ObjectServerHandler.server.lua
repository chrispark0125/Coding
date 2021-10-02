local UIS = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")
local AssetFolder = ReplicatedStorage.Assets
local BlockFolder = AssetFolder.Blocks
local localplayer = game.Players.LocalPlayer
local RemoteEventFolder = game.ReplicatedStorage.RemoteEvents

local EntityPlace = RemoteEventFolder.EntityPlace
local EntityDestroy = RemoteEventFolder.EntityDestroy

EntityPlace.OnServerEvent:Connect(function(client,posx,posy,posz,blockcode)
    if blockcode == 1 then
        local BuildingObj = BlockFolder.Place1:Clone()
        BuildingObj.Parent = game.Workspace
        BuildingObj.pos = Vector3(posx, posy, posz)
    end
end)

EntityDestroy.OnServerEvent:Connect(function(client,blockcode,block)

end)

game.Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Connect(function(Character)
        print(Character.Name)
    end)
end)
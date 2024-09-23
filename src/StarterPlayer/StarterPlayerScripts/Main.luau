_G.GameData = require(game.ReplicatedStorage.GameData)

local Tile = require(game.ReplicatedStorage.Tile)
local GrowthManager = require(game.ReplicatedStorage.GrowthManager)

local earthTiles = game.Workspace:WaitForChild("EarthTiles")

-- Wait for the parts to be loaded
earthTiles.ChildAdded:Wait()

local tilesChildren = earthTiles:GetChildren()

-- Services
local RunService = game:GetService("RunService")


for _, tileInstance in tilesChildren do
	local tile = Tile:new(tileInstance)
	table.insert(_G.GameData.tiles, tile)
end

RunService.Heartbeat:Connect(function(deltaTime)
	GrowthManager:run(deltaTime)
end)
local RunService = game:GetService("RunService")

local GameGUI = script.Parent.GameGUI
local coinsLabel = GameGUI.CoinsLabel

local lastCoins = -1

local function updateUI(deltaTime: number)
	local currentCoins = _G.GameData.coins
	if currentCoins ~= lastCoins then
		lastCoins = currentCoins
		local text = string.format("Coins: %d", currentCoins)
		coinsLabel.Text = text
	end
end

RunService.Heartbeat:Connect(updateUI)
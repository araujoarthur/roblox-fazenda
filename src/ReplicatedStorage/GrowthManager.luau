local GrowthManager = {}

local GROWTH_CHANCE_PER_SECOND = 0.03 -- 100% dentro de um segundo.



function GrowthManager:run(deltaTime)
	local tiles = _G.GameData.tiles
	
	for _, tile in tiles do
		-- Ignora os tiles completos
		if tile:isComplete() then 
			continue 
		end
		
		--
		local chance = GROWTH_CHANCE_PER_SECOND * deltaTime
		if math.random() >= chance then
			continue
		end
		
		-- Grow
		tile:setStage(tile.stage + 1)
		
	end
	-- print(string.format("[GrowthManager:run] deltaTime: %.4f", deltaTime))	
end

return GrowthManager
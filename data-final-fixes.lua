local function patchBarrel(barrel, energy)
	if barrel then
		if not barrel.fuel_category then
			barrel.fuel_category = "Diesel-Locomotive-fluid"
			barrel.fuel_value = energy
			barrel.burnt_result = "empty-barrel"
		end
	end
end

patchBarrel(data.raw["item"]["light-oil-barrel"], "67.5MJ")
patchBarrel(data.raw["item"]["heavy-oil-barrel"], "32.5MJ")
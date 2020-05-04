local tankApi = require "__fluidTrains__/api/data"

tankApi.generateTank(1500)

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
patchBarrel(data.raw["item"]["diesel-barrel"], "70MJ")
patchBarrel(data.raw["item"]["diesel-fuel-barrel"], "70MJ")

local fluid = data.raw["fluid"]["diesel-fuel"]
if fluid then 
	local light_proxy = {
		type = "item",
		icon = fluid.icon,
		icon_size = fluid.icon_size,
		icon_mipmaps = fluid.icon_mipmaps,
		icons = fluid.icons,
		stack_size = 4294967295,
		fuel_category = "Diesel-Locomotive-fluid",
		flags = {"hidden"},
		name = "Diesel-Locomotive-diesel-fuel",
		localised_name = {"", {"fluid-name.diesel-fuel"}},
		fuel_value = "1.4MJ",
		fuel_acceleration_multiplier = 1.2,
		fuel_top_speed_multiplier = 1.1
	}
	data:extend({light_proxy})
end

fluid = data.raw["fluid"]["diesel"]
if fluid then 
	local light_proxy = {
		type = "item",
		icon = fluid.icon,
		icon_size = fluid.icon_size,
		icon_mipmaps = fluid.icon_mipmaps,
		icons = fluid.icons,
		stack_size = 4294967295,
		fuel_category = "Diesel-Locomotive-fluid",
		flags = {"hidden"},
		name = "Diesel-Locomotive-diesel",
		localised_name = {"", {"fluid-name.diesel"}},
		fuel_value = "1.4MJ",
		fuel_acceleration_multiplier = 1.2,
		fuel_top_speed_multiplier = 1.1
	}
	data:extend({light_proxy})
end

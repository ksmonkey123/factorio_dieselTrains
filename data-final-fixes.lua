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

patchBarrel(data.raw["item"]["light-oil-barrel"], (50 * settings.startup["dieselTrains_light_oil_fuel_mj"].value) .. "MJ")
patchBarrel(data.raw["item"]["heavy-oil-barrel"], (50 * settings.startup["dieselTrains_heavy_oil_fuel_mj"].value) .. "MJ")
patchBarrel(data.raw["item"]["diesel-barrel"], (50 * settings.startup["dieselTrains_diesel_fuel_mj"].value) .. "MJ")
patchBarrel(data.raw["item"]["diesel-fuel-barrel"], (50 * settings.startup["dieselTrains_diesel_fuel_mj"].value) .. "MJ")

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
		fuel_value = settings.startup["dieselTrains_diesel_fuel_mj"].value .. "MJ",
		fuel_acceleration_multiplier = settings.startup["dieselTrains_diesel_accel_mult"].value,
		fuel_top_speed_multiplier = settings.startup["dieselTrains_diesel_topspeed_mult"].value
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
		fuel_value = settings.startup["dieselTrains_diesel_fuel_mj"].value .. "MJ",
		fuel_acceleration_multiplier = settings.startup["dieselTrains_diesel_accel_mult"].value,
		fuel_top_speed_multiplier = settings.startup["dieselTrains_diesel_topspeed_mult"].value
	}
	data:extend({light_proxy})
end

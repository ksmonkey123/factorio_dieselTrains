local fluid_locomotive_item = table.deepcopy(data.raw["item-with-entity-data"]["locomotive"])
fluid_locomotive_item.name = "Diesel-Locomotive-fluid-locomotive"
fluid_locomotive_item.icon = "__dieselTrains__/graphics/icons/diesel-locomotive.png"
fluid_locomotive_item.icon_size = 32
fluid_locomotive_item.order = "a[train-system]-fa[diesel-locomotive]"
fluid_locomotive_item.place_result = "Diesel-Locomotive-fluid-locomotive"


local fluid = data.raw["fluid"]["light-oil"]

local light_proxy = {
	type = "item",
	icon = fluid.icon,
	icon_size = fluid.icon_size,
	icon_mipmaps = fluid.icon_mipmaps,
	icons = fluid.icons,
	stack_size = 1500,
	fuel_category = "Diesel-Locomotive-fluid",
	flags = {"hidden"},
	name = "Diesel-Locomotive-light-oil",
	localised_name = {"", {"fluid-name.light-oil"}},
	fuel_value = "1.35MJ",
	fuel_acceleration_multiplier = 1.2,
	fuel_top_speed_multiplier = 1.1
}

fluid = data.raw["fluid"]["heavy-oil"]

local heavy_proxy = {
	type = "item",
	icon = fluid.icon,
	icon_size = fluid.icon_size,
	icon_mipmaps = fluid.icon_mipmaps,
	icons = fluid.icons,
	stack_size = 1500,
	fuel_category = "Diesel-Locomotive-fluid",
	flags = {"hidden"},
	name = "Diesel-Locomotive-heavy-oil",
	localised_name = {"", {"fluid-name.heavy-oil"}},
	fuel_value = "0.65MJ",
	fuel_acceleration_multiplier = 1.1,
	fuel_top_speed_multiplier = 1.05
}


-- For mod added diesel fuels.

data:extend({fluid_locomotive_item, light_proxy, heavy_proxy})
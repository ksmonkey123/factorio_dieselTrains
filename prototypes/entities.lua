-- Make a copy of the base game's locomotive, then make the needed changes for this mod
local fluid_locomotive = table.deepcopy(data.raw["locomotive"]["locomotive"])
fluid_locomotive.name = "Diesel-Locomotive-fluid-locomotive"
fluid_locomotive.minable.result = "Diesel-Locomotive-fluid-locomotive"
fluid_locomotive.burner.fuel_category = "Diesel-Locomotive-fluid"
fluid_locomotive.burner.fuel_inventory_size = 1
fluid_locomotive.burner.burnt_inventory_size = 1
fluid_locomotive.color = {r = 1, g = 0.73, b = 0.07, a = 0.5}

-- Add new locomotive to the game
data:extend({fluid_locomotive})

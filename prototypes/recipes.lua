local fluid_locomotive_item_recipe = table.deepcopy(data.raw["recipe"]["locomotive"])
fluid_locomotive_item_recipe.name = "Diesel-Locomotive-fluid-locomotive"
fluid_locomotive_item_recipe.result = "Diesel-Locomotive-fluid-locomotive"

data:extend({fluid_locomotive_item_recipe})

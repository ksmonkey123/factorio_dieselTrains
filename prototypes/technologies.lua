local fluid_locomotive_tech = 
{
	type = "technology",
	name = "diesel-locomotive",
	icon = "__dieselTrains__/graphics/technologies/diesel-locomotive.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "Diesel-Locomotive-fluid-locomotive"
		}
	},
	prerequisites = {"automated-rail-transportation", "oil-processing"},
	unit =
	{
		count = 100,
		ingredients =
	{
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
	},
		time = 30
	},
	order = "c-g-a-c",
}

data:extend({fluid_locomotive_tech})
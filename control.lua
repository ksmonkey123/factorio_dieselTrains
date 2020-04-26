local function ON_INIT()
	remote.call("fluidTrains_hook", "addLocomotive", "Diesel-Locomotive-fluid-locomotive", 1500)
	remote.call("fluidTrains_hook", "addFluid", "Diesel-Locomotive-fluid", "light-oil", {{item = "Diesel-Locomotive-light-oil"}})
	remote.call("fluidTrains_hook", "addFluid", "Diesel-Locomotive-fluid", "heavy-oil", {{item = "Diesel-Locomotive-heavy-oil"}})
	if game.fluid_prototypes["diesel-fuel"] then
		remote.call("fluidTrains_hook", "addFluid", "Diesel-Locomotive-fluid", "diesel-fuel", {{item = "Diesel-Locomotive-diesel-fuel", temp = 0}})
	end
	
	for _, force in pairs(game.forces) do
	  if force.technologies["diesel-locomotive"].researched then
	    force.recipes["Diesel-Locomotive-fluid-locomotive"].enabled = true
	  end
	end
end

script.on_init(ON_INIT)
script.on_configuration_changed(ON_INIT)
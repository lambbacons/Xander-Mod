--Establish lists of items, per subgroups
--For each entry: first field is name, second field is XM added (true = added by XM, false = from the base game), third field is whether to have a place result (Y/N).  I use FOR loops to construct the complete entry lists in 
--order to save space, etc. on repetetive patterns
--Subgroups copied from General Lists

--MATERIALS
--==========
--raw-resource: Can you just dig it up out of the ground?  This should be everything that: can be freely selected (1:1 ratio, no limits), directly from mining result items.
	--*Defined based on the same resource data lists used to make the resource entities
--Milled resources: rocks dug up from the ground and crushed, ready for selecting or concentrating (or other stuff as it may come along)
xm_milled_resource_items = {}
xm_milled_resource_items_names = {"milled-copper-ore", "milled-igneous-sulfide", "milled-iron-ore", "milled-bauxite", "milled-nickeliferous-laterite", "milled-magnetic", "milled-massive-sulfide", "milled-phosphorite", 
	"quartz-sand", "milled-skarn", "limestone", "quartzite", "dolerite", "milled-uranium-ore", "oceanic-salt"}
for i, name in ipairs(xm_milled_resource_items_names) do table.insert(xm_milled_resource_items, {name, true, false}) end
--Concentrate: concentrates; materials derived from resource items, that are enriched in one component that you want
xm_concentrate_items = {}
xm_concentrate_items_names = {"chalcocite", "molybdenite", "saltpeter", "borax", "lithium-concentrate", "chalcopyrite", "pentlandite", "hematite", "pyrolusite", "clay", "magnetite", "chromite", "sphalerite", "galena", 
	"hydroxylapatite", "fluorite", "heavy-sand", "ilmenite", "zircon", "cassiterite", "scheelite", "monazite", "pitchblende"}
for i, name in ipairs(xm_concentrate_items_names) do table.insert(xm_concentrate_items, {name, true, false}) end
--Oxide: refined oxides, mostly of metals for reduction, but also of some other elements
xm_oxide_items = {}
xm_oxide_items_names = {"aluminum-hydroxide", "aluminum-oxide", "boron-oxide", "calcium-oxide", "chromium-oxide", "cobalt-oxide", "cuprous-oxide", "lead-oxide", "lithium-hydroxide", "magnesium-oxide", "nickel-oxide", 
	"re-oxide", "sodium-hydroxide", "titanium-oxide", "tungsten-oxide", "uranium-238-oxide", "uranium-fuel-oxide", "uranium-weapons-oxide", "vanadium-oxide", "zinc-oxide", "zirconium-oxide"}
for i, name in ipairs(xm_oxide_items_names) do table.insert(xm_oxide_items, {name, true, false}) end
--Sponge: metal sponges, powders of metals with some (but not much) impurity phases
xm_sponge_items = {}
xm_sponge_items_names = {"gold-sponge", "raw-iron", "platinum-sponge", "silver-sponge", "titanium-sponge", "tungsten-powder", "zirconium-sponge"}
for i, name in ipairs(xm_sponge_items_names) do table.insert(xm_sponge_items, {name, true, false}) end
--Plate: an early-game superposition of raw ingot material and semi-formed stock
xm_plate_items = {{"copper-plate", false}, {"bronze-plate", true}, {"iron-plate", false}, {"steel-plate", false}}
--Ingot: bulk metal (or metalloid - anything that can be cast into blocks or chunks) of distinct compositions.  Can be elements, alloys, etc., in single units.  Meant for making billets or stock shapes, not parts directly
xm_ingot_items = {}
xm_ingot_items_names = {"aluminum-ingot", "chromium-ingot", "cobalt-ingot", "gold-ingot", "lead-ingot", "magnesium-ingot", "nickel-ingot", "platinum-ingot", "re-ingot", "silver-ingot", "solder-1-ingot", "solder-2-ingot", 
	"silicon-ingot", "tin-ingot", "titanium-ingot", "tungsten-ingot", "uranium-238-ingot", "vanadium-ingot", "zinc-ingot"}
for i, name in ipairs(xm_ingot_items_names) do table.insert(xm_ingot_items, {name, true, false}) end
--Billet: large sizes metal in useful compositions. Can represent many stock forms: large chunks, long rods, hex bar, tubing, beams, etc.  Meant for making parts.
xm_billet_items = {}
xm_billet_items_names = {"alloy-billet", "brass-billet", "bronze-billet", "cast-iron-billet", "copper-billet", "duralumin-billet", "monel-billet", "silicon-boule", "stainless-billet", "steel-billet", "superalloy-billet", 
	"titanium-billet", "zirconium-billet"}
for i, name in ipairs(xm_billet_items_names) do table.insert(xm_billet_items, {name, true, false}) end
--Nonmetal: elements of not metallic character.  Varying purity grades.
xm_nonmetal_items = {}
xm_nonmetal_items_names = {"charcoal", "coke", "graphite-powder", "graphite-block", "activated-carbon", "silicon-powder", "semiconductor-silicon-powder", "phosphorus", "sulfur"}
xm_nonmetal_items_news = {true, true, true, true, true, true, true, true, false}
for i, name in ipairs(xm_nonmetal_items_names) do table.insert(xm_nonmetal_items, {name, xm_nonmetal_items_news[i], false}) end
--Salt: salts
xm_salt_items = {}
xm_salt_items_names = {"calcium-chloride", "calcium-sulfate", "cryolite-mixture", "lithium-perchlorate", "lithium-tetrafluoroborate", "lithium-titanate", "magnesium-chloride", "sodium-chloride", "sodium-sulfate", "silicon-carbide", "silicon-nitride", "sodium-carbonate", "sodium-chromate", "ammonium-vanadate", "tungsten-carbide", "uranyl-nitrate", "uranium-natural-hexafluoride", "uranium-238-hexafluoride", "uranium-fuel-hexafluoride", "uranium-weapons-hexafluoride", "zirconium-tetrachloride"}
for i, name in ipairs(xm_salt_items_names) do table.insert(xm_salt_items, {name, true, false}) end
--Compound: solid, inorganic compounds, excluding salts
xm_compound_items = {}
--Organic: solid organic compounds
xm_organic_items = {}
--Carbohydrate: solid organic compounds, specifically containing only C, H, and O
xm_carbohydrate_items = {}
--Raw: unrefined synthetic products, like slags and metal sponge
xm_raw_items = {}
--Build: refractory, construction, and land materials
xm_build_items = {}
xm_build_items_names = {"brick-clay", "brick-clay-graphite", "brick-spinel", "stone-brick", "brick-zirconia", "cement-powder", "concrete", "hazard-concrete", "fused-basalt", "fused-quartz", "glass", "modified", "landfill"}
xm_build_items_news = {true, true, true, false, true, true, false, false, true, true, true, true, false}
for i, name in ipairs(xm_build_items_names) do table.insert(xm_build_items, {name, xm_build_items_news[i], false}) end
--Fluid Recipes: not for items, but rather the icons and places of some recipes that involve fluids
--Waste: waste materials
xm_waste_items = {}

--List of legacy alloy items from XM 1, created (and still leftover) from an original test of the function to automatically generate item prototypes
xm_alloy_items = {}
xm_alloy_items_names = {"brass-plate", "monel-plate", "silicon-boule", "solder-1-plate", "solder-2-plate"}
for i, name in ipairs(xm_alloy_items_names) do table.insert(xm_alloy_items, {name, true, false}) end


--PARTS
--==========
--Mechanical
xm_mechanical_items = {}
local xm_mechanical_items_names = {"iron-gear-wheel", "gear-2", "gear-3", "gear-4", "bearing-1", "bearing-2", "bearing-3", "iron-stick", "rod-2", "rod-3", "rod-4", "shaft-0", "shaft-1", "shaft-2", "shaft-3"}
local xm_mechanical_items_news = {false, true, true, true, true, true, true, false, true, true, true, true, true, true, true}
for i, name in ipairs(xm_mechanical_items_names) do table.insert(xm_mechanical_items, {name, xm_mechanical_items_news[i], false}) end
--Assemblies
xm_assembly_items = {}
local xm_assembly_items_names = {"mechanical-steam-engine", "piston-cylinder", "mechanism-0", "mechanism-1", "mechanism-2", "mechanism-3", "engine-unit", "wheel-1", "wheel-2", "flying-robot-frame", "flying-robot-frame-2", 
	"tooling-1", "tooling-2", "tooling-3", "control-1", "control-2", "control-3", "lasing-1", "lasing-2", "lasing-3"}
local xm_assembly_items_news = {true, true, true, true, true, true, false, true, true, false, true, true, true, true, true, true, true, true, true, true}
for i, name in ipairs(xm_assembly_items_names) do table.insert(xm_assembly_items, {name, xm_assembly_items_news[i], false}) end


--PRODUCTION
--==========
--Most items are legacy from XM 1
--Tools
xm_tool_items = {}
xm_tool_items_names = {"titanium-axe", "axe-1", "iron-axe", "steel-axe", "axe-4", "axe-5", "axe-6", "repair-pack", "repair-pack-2", "repair-pack-3"}
xm_tool_items_news = {true, true, false, false, true, true, true, false, true, true}
local xm_tool_items_damages = {2, 2, 5, 8, 5, 6, 7, nil, nil, nil}
local xm_tool_items_durabilities = {15000, 5000, 6000, 8000, 12000, 15000, 20000, 300, 200, 500}
local xm_tool_items_speeds = {2, 2.5, 2.5, 4, 8, 10, 12, 0.5, 1, 2}
for i, name in ipairs(xm_tool_items_names) do table.insert(xm_tool_items, {name, xm_tool_items_news[i], false, xm_tool_items_damages[i], xm_tool_items_durabilities[i], xm_tool_items_speeds[i]}) end
--Energy machines
xm_energy_items = {}
xm_energy_items_names = {"boiler", "boiler-2", "heat-exchanger", "boiler-4", "steam-engine", "steam-turbine", "steam-turbine-2", "heat-pipe", "nuclear-reactor", "solar-panel", "solar-panel-2", "solar-panel-3", "accumulator", 
	"accumulator-2", "small-lamp", "lamp-2"}
xm_energy_items_news = {false, true, false, true, false, false, true, false, false, false, true, true, false, true, false, true}
for i, name in ipairs(xm_energy_items_names) do table.insert(xm_energy_items, {name, xm_energy_items_news[i], true}) end
--Mining and ore processing machines
xm_miner_items = {}
xm_miner_items_names = {"offshore-pump", "offshore-pump-1", "logging-camp", "burner-mining-drill", "electric-mining-drill", "mining-drill-3", "mining-drill-4", "pumpjack", "pumpjack-2", "ore-processor-0", "ore-processor-1", 
	"ore-processor-2"}
xm_miner_items_news = {false, true, true, false, false, true, true, false, true, true, true, true}
for i, name in ipairs(xm_miner_items_names) do table.insert(xm_miner_items, {name, xm_miner_items_news[i], true}) end
--Furnaces
xm_furnace_items = {}
xm_furnace_items_names = {"stone-furnace", "furnace-2", "steel-furnace", "furnace-4", "electric-furnace", "furnace-6"}
xm_furnace_items_news = {false, true, false, true, false, true}
for i, name in ipairs(xm_furnace_items_names) do table.insert(xm_furnace_items, {name, xm_furnace_items_news[i], true}) end
--Chemical machines
xm_chemical_items = {}
xm_chemical_items_names = {"chemical-plant", "reactor-1", "reactor-2", "electrolyzer-1", "electrolyzer-2", "centrifuge", "oil-refinery", "reactor-3", true}
xm_chemical_items_news = {false, true, true, true, true, false, false, true}
for i, name in ipairs(xm_chemical_items_names) do table.insert(xm_chemical_items, {name, xm_chemical_items_news[i], true}) end
--Fabricating and assembling machines
xm_production_items = {}
xm_production_items_names = {"machine-tool-0", "machine-tool-1", "machine-tool-2", "machine-tool-3", "assembling-machine-0", "assembling-machine-1", "assembling-machine-2", "assembling-machine-3", "assembling-machine-4", 
	"lab-1", "lab"}
xm_production_items_news = {true, true, true, true, true, false, false, false, true, true, false}
for i, name in ipairs(xm_production_items_names) do table.insert(xm_production_items, {name, xm_production_items_news[i], true}) end
--Modules
xm_module_items = {}
xm_module_items_names = {"beacon", "speed-module", "speed-module-2", "speed-module-3", "effectivity-module", "effectivity-module-2", "effectivity-module-3", "productivity-module", "productivity-module-2", 
	"productivity-module-3"}
for i, name in ipairs(xm_module_items_names) do table.insert(xm_module_items, {name, false, false}) end

--LOGISTICS
--==========

--COMBAT
--==========
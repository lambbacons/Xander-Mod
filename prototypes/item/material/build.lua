--New XM Items
--Group 3, subgroup 19
for i, entry in ipairs(xm_build_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 19, i - 1, entry[3])})
	end
end

--Add special parameters
data.raw.item["brick-clay"].place_as_tile =
{
	result = "brick",
	condition_size = 1,
	condition = {"water-tile"}
}
data.raw.item["fused-basalt"].place_as_tile =
{
	result = "basalt",
	condition_size = 1,
	condition = {"water-tile"}
}
data.raw.item["fused-quartz"].place_as_tile =
{
	result = "quartz",
	condition_size = 1,
	condition = {"water-tile"}
}

--Base Overrides

--Landfill
data.raw.item["landfill"].icon = "__xander-mod__/graphics/item/material/build/landfill.png"
data.raw.item["landfill"].order = "00"
data.raw.item["landfill"].stack_size = 200
data.raw.item["landfill"].place_as_tile = {result = "gravel", condition_size = 1, condition = {"ground-tile"}}

--Stone Brick
data.raw.item["stone-brick"].order = "01"
data.raw.item["stone-brick"].stack_size = 200

--Concrete
data.raw.item["concrete"].order = "05"
data.raw.item["concrete"].stack_size = 200

--Hazard Concrete
data.raw.item["hazard-concrete"].order = "06"
data.raw.item["hazard-concrete"].stack_size = 200
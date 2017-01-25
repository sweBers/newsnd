--[[
Title newsnd

Copyright sweBers
License (WTFPL):
 newsnd

This program is free software. It comes without any warranty, to
the extent permitted by applicable law. You can redistribute it
and/or modify it under the terms of the Do What The Fuck You Want
To Public License, Version 2, as published by Sam Hocevar. See
http://sam.zoy.org/wtfpl/COPYING for more details.

--]]

-- Test redefine default blocks:

-- minetest.override_item("default:dirt_with_grass", {tiles={"newsnd_stone.png^newsnd_mineral_iron.png"}}) 

newsnd = {}

function newsnd.node_sound_defaults(table) 
	table = table or {}
	table.place = table.place or
			{name="newsnd_place_node"}
	table.dig = table.dig or 
			{name="newsnd_dug_node"}
	default.node_sound_defaults(table)
	return table
end

function newsnd.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="newsnd_hard_footstep"}
	table.place = table.place or
			{name="newsnd_place_node_hard"}
	table.dig = table.dig or 
			{name="newsnd_hard_break"}
	newsnd.node_sound_defaults(table)
	return table
end

function newsnd.node_sound_dirt_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="newsnd_dirt_footstep", gain=0.5}
	table.dig = table.dig or 
			{name="newsnd_dig_crumbly"}
	newsnd.node_sound_defaults(table)
	return table
end

function newsnd.node_sound_sand_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="newsnd_sand_footstep", gain=0.25}
	table.dig = table.dig or 
			{name="newsnd_dig_crumbly", gain =5.0}
	newsnd.node_sound_defaults(table)
	return table
end

function newsnd.node_sound_wood_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="newsnd_hard_footstep", gain=0.3}
	table.dig = table.dig or 
			{name="newsnd_wood_footstep", gain =2}
	newsnd.node_sound_defaults(table)
	return table
end

function newsnd.node_sound_leaves_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="newsnd_grass_footstep", gain=0.25}
	table.dig = table.dig or
			{name="newsnd_dig_crumbly", gain=0.4} or
			{name="newsnd_grass_break"}
	table.place = table.place or
			{name="newsnd_grass_place"}
	newsnd.node_sound_defaults(table)
	return table
end

function newsnd.node_sound_glass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="newsnd_glass_footstep", gain=0.25}
	table.dug = table.dug or
			{name="newsnd_glass_break", gain=1.0}
	newsnd.node_sound_defaults(table)
	return table
end

-- Register nodes

minetest.override_item("default:stone",  {
	sounds = newsnd.node_sound_stone_defaults(),
})


minetest.override_item("default:stone_with_coal", {
	sounds = newsnd.node_sound_stone_defaults(),
})

minetest.override_item("default:stone_with_iron", {
	sounds = newsnd.node_sound_stone_defaults(),
})

minetest.override_item("default:dirt_with_grass", {
	sounds = newsnd.node_sound_dirt_defaults({
		footstep = {name="newsnd_grass_footstep", gain=0.4},
	}),
})

minetest.override_item("default:dirt_with_grass_footsteps", {
	sounds = newsnd.node_sound_dirt_defaults({
		footstep = {name="newsnd_grass_footstep", gain=0.4},
	}),
})

minetest.override_item("default:dirt_with_snow", {
	sounds = newsnd.node_sound_dirt_defaults({
		footstep = {name="newsnd_snow_footstep", gain=0.4},
	}),
})

minetest.override_item("default:dirt",{sounds = newsnd.node_sound_dirt_defaults({
		--footstep = {name="newsnd_dirt_footstep", gain=0.4},
	}),
})
minetest.override_item("default:sand", {sounds = newsnd.node_sound_sand_defaults({
		--footstep = {name="newsnd_sand_footstep", gain=0.4},
	}),
})

minetest.override_item("default:gravel", {
	sounds = newsnd.node_sound_dirt_defaults({
		--footstep = {name="newsnd_gravel_footstep", gain=0.45},
	}),
})

minetest.override_item("default:sandstone", {
	sounds = newsnd.node_sound_stone_defaults({
		--footstep = {name="newsnd_hard_footstep", },
	}),
})

minetest.override_item("default:clay", {
	sounds = newsnd.node_sound_dirt_defaults({
		--footstep = "",
	}),
})

minetest.override_item("default:brick", {
	sounds = newsnd.node_sound_stone_defaults(),
})

minetest.override_item("default:tree", {
	sounds = newsnd.node_sound_wood_defaults(),
})

minetest.override_item("default:junglegrass", {
	sounds = newsnd.node_sound_leaves_defaults(),
})

minetest.override_item("default:leaves", {
	sounds = newsnd.node_sound_leaves_defaults(),
})

minetest.override_item("default:cactus", {
	sounds = newsnd.node_sound_wood_defaults(),
})

minetest.override_item("default:papyrus", {
	sounds = newsnd.node_sound_leaves_defaults(),
})

minetest.override_item("default:bookshelf", {
	sounds = newsnd.node_sound_wood_defaults(),
})

minetest.override_item("default:glass", {
	sounds = newsnd.node_sound_glass_defaults(),
})

minetest.override_item("default:fence_wood", {
	sounds = newsnd.node_sound_wood_defaults(),
})


minetest.override_item("default:ladder", {
	sounds = newsnd.node_sound_wood_defaults(),
})

minetest.override_item("default:wood", {
	sounds = newsnd.node_sound_wood_defaults(),
})

minetest.override_item("default:mese", {
	sounds = newsnd.node_sound_defaults(),
})

minetest.override_item("default:cloud", {
	sounds = newsnd.node_sound_defaults(),
})


minetest.override_item("default:torch", {
	sounds = newsnd.node_sound_defaults(),
})


minetest.override_item("default:sign_wall", {
	sounds = newsnd.node_sound_defaults(),
})


minetest.override_item("default:chest", {
	sounds = newsnd.node_sound_wood_defaults(),
})


minetest.override_item("default:chest_locked", {
	sounds = newsnd.node_sound_wood_defaults(),
})


minetest.override_item("default:furnace", {
	sounds = newsnd.node_sound_stone_defaults(),
})


minetest.override_item("default:furnace_active", {
	sounds = newsnd.node_sound_stone_defaults(),
})


minetest.override_item("default:cobble", {
	sounds = newsnd.node_sound_stone_defaults(),
})

minetest.override_item("default:mossycobble", {
	sounds = newsnd.node_sound_stone_defaults(),
})

minetest.override_item("default:steelblock", {
	sounds = newsnd.node_sound_stone_defaults(),
})

minetest.override_item("default:nyancat", {
	sounds = newsnd.node_sound_defaults(),
})

minetest.override_item("default:nyancat_rainbow", {
	sounds = newsnd.node_sound_defaults(),
})

minetest.override_item("default:sapling", {
	sounds = newsnd.node_sound_defaults(),
})

minetest.override_item("default:apple", {
	sounds = newsnd.node_sound_defaults(),
})



--Override some default sounds

Old_Lava_Sounds = default.cool_lava

default.cool_lava = function(pos, node)
	if node.name == "default:lava_source" then
		minetest.set_node(pos, {name = "default:obsidian"})
	else -- Lava flowing
		minetest.set_node(pos, {name = "default:stone"})
	end
	minetest.sound_play("newsnd_cool_lava",
		{pos = pos, max_hear_distance = 16, gain = 0.25})
end



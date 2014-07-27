local S = homedecor.gettext

local bathroom_tile_colors = {
	{ "1", "white/grey" },
	{ "2", "white/dark grey" },
	{ "3", "white/black" },
	{ "4", "black/dark grey" },
}

for i in ipairs(bathroom_tile_colors) do
	local color = bathroom_tile_colors[i][1]
	local shade = bathroom_tile_colors[i][2]
	minetest.register_node("homedecor:tiles_"..color, {
		description = "Bathroom/kitchen tiles ("..shade..")",
		tiles = {
			"homedecor_bathroom_tiles_"..color..".png",
			"homedecor_bathroom_tiles_"..color..".png",
			"homedecor_bathroom_tiles_"..color..".png",
			"homedecor_bathroom_tiles_"..color..".png",
			"homedecor_bathroom_tiles_"..color..".png^[transformR90",
			"homedecor_bathroom_tiles_"..color..".png^[transformR90"
		},
		is_ground_content = true,
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	})
end

minetest.register_node("homedecor:towel_rod", {
	description = "Towel rod with towel",
	drawtype = "nodebox",
	tiles = {
		"homedecor_towel_rod_top.png",
		"homedecor_towel_rod_bottom.png",
		"homedecor_towel_rod_sides.png",
		"homedecor_towel_rod_sides.png^[transformFX",
		"homedecor_towel_rod_fb.png",
		"homedecor_towel_rod_fb.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, 0.1875, 0.25, -0.3125, 0.375, 0.5},
			{ 0.3125, 0.1875, 0.25, 0.375, 0.375, 0.5},
			{-0.3125, 0.25, 0.3125, 0.3125, 0.375, 0.375},
			{-0.3125, 0, 0.375, 0.3125, 0.34375, 0.4375},
			{-0.3125, -0.3125, 0.25, 0.3125, 0.34375, 0.3125},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.375, -0.3125, 0.25, 0.375, 0.375, 0.5 }
	},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3},
	sounds = default.node_sound_defaults(),
})

minetest.register_node("homedecor:toilet_paper", {
	description = S("Toilet paper"),
	tiles = {
		"homedecor_toilet_paper_tb.png",
		"homedecor_toilet_paper_tb.png",
		"homedecor_toilet_paper_sides.png",
		"homedecor_toilet_paper_sides.png",
		"homedecor_toilet_paper_back.png",
		"homedecor_toilet_paper_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, 0.1875, 0.25, -0.1875, 0.25, 0.5},
			{0.125, 0.1875, 0.25, 0.1875, 0.25, 0.5},
			{-0.1875, 0.0625, 0.125, 0.125, 0.375, 0.4375},
			{-0.25, 0.125, 0.4375, -0.1875, 0.3125, 0.5},
			{0.125, 0.125, 0.4375, 0.1875, 0.3125, 0.5}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.25, 0.0625, 0.125, 0.1875, 0.375, 0.5}
	},
	groups = {snappy=2,oddly_breakable_by_hand=3,flammable=3},
	sounds = default.node_sound_defaults(),
})


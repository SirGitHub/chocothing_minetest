minetest.register_node("chocothing:chocolate_block", {
	tiles = {"nutella_top.png",
		"nutella_bottom.png",
		"nutella_side.png",
		"nutella_side.png",
		"nutella_side.png",
		"nutella_side.png",
	},
	description = "Chocolate Block",
	groups = {oddly_breakable_by_hand = 3},
	on_punch = function(pos, node, player)
		ppos = player:getpos()
		print(ppos)
		print(ppos.x)
		print(ppos.y)
		print(ppos.z)
		player:setpos({x = ppos.x, y = 1500.0, z = ppos.z})
	end,
})
minetest.register_node("chocothing:cloud_block", {
	tiles = {"cloud.png"},
	description = "Cloud",
	diggable = false,
	pointable = false,
	sun_light_propagates = true,
})
minetest.register_ore({
	ore_type = "blob",
	ore = "chocothing:cloud_block",
	wherein = "air",
	clust_scarcity = 12*12*12,
	clust_num_ores = 8,
	clust_size = 4,
	height_min = 1000,
	height_max = 1500,
})
minetest.register_ore({
	ore_type = "blob",
	ore = "chocothing:cloud_block",
	wherein = "air",
	clust_scarcity = 10*10*10,
	clust_num_ores = 8,
	clust_size = 4,
	height_min = 1200,
	height_max = 1300,
})
minetest.register_ore({
	ore_type = "blob",
	ore = "chocothing:chocolate_block",
	wherein = "air",
	clust_scarcity = 50*50*50,
	clust_num_ores = 1000,
	clust_size = 25,
	height_min = 1600,
	height_max = 1700,
})
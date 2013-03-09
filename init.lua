minetest.register_node("factorization:battery", {
	description = "Battery",
	is_ground_content = 1,
	tiles = {"factorization_battery_top.png", "factorization_battery_side.png",},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("infotext", "Battery 100%")
	end,
})

minetest.register_node("factorization:wire", {
	description = "Wire",
	is_ground_content = true,
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
                fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	drawtype = "raillike",
	tiles = {"factorization_wire.png", "factorization_wire_curved.png", "factorization_wire_t_junction.png", "factorization_wire_crossing.png"},
	wield_image = "factorization_wire.png",
	inventory_image = "factorization_wire.png",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
})

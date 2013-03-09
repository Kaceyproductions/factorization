minetest.register_node("factorization:battery", {
	is_ground_content = 1,
	tiles = {"factorization_battery_top.png", "factorization_battery_side.png",},
	description = "Battery",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("infotext", "Battery 100%")
	end,
})

/// World structures, including crafting stations ect ///

/obj/machinery/autolathe/anvil
	name = "steel anvil"
	desc = "Used to aid in shaping objects, usually bladed weaponry."
	icon = 'icons/crescent13/obj/metallurgy.dmi'
	icon_state = "steel_anvil"
	idle_power_usage = 0
	active_power_usage = 0
	clicksound = null
	clickvol = 0

/obj/machinery/mineral/processing_unit/blast_furnace
	name = "blast furnace"
	icon = 'icons/crescent13/obj/metallurgy.dmi'
	icon_state = "blast_furnace"
	light_range = 3
	sheets_per_tick = 1

/obj/machinery/mineral/processing_unit_console/smelter_order
	name = "smelter orders"
	icon = 'icons/crescent13/obj/vending.dmi'
	icon_state = "supply_stall"

	density = TRUE

/obj/structure/barricade/palisade
	name = "palisade"
	desc = "A tall palisade buit using tree logs. Prevents movement."
	icon = 'icons/crescent13/obj/structures/structures.dmi'
	icon_state = "palisade"
	health = 150
	maxhealth = 150

/obj/structure/barricade/wood_fence
	name = "wooden fence"
	desc = "Doesn't work much as defence."
	icon = 'icons/crescent13/obj/structures/structures.dmi'
	icon_state = "wood_fence4-8"
	health = 100
	maxhealth = 100

/obj/structure/barricade/wood_fence_division
	name = "wooden fence division"
	desc = "Doesn't work much as defence."
	icon = 'icons/crescent13/obj/structures/structures.dmi'
	icon_state = "wood_fence_10"
	health = 100
	maxhealth = 100
/*
/obj/structure/bonfire/brazier
	name = "brazier"
	icon = 'icons/crescent13/obj/structures/structures.dmi'
	icon_state = "brazier0"

/obj/structure/bonfire/brazier/update_icon()
	overlays.Cut()
	if(burning)
		state
		switch(get_fuel_amount())
			if(0 to 4.5)
				state = "brazier_burning"
			if(4.6 to 10)
				state = "brazier_burning"
		image/I = image(icon, state)
		I.appearance_flags = RESET_COLOR
		overlays += I

		if(has_buckled_mobs() && get_fuel_amount() >= 5)
			I = image(icon, "brazier_burning")
			I.pixel_y = 13
			I.layer = MOB_LAYER + 0.1
			I.appearance_flags = RESET_COLOR
			overlays += I
*/
//

obj/structure/bookcase/mapped
	name = "scroll bookcase"

	New()
		..()
		new /obj/item/paper/scroll(src)
		new /obj/item/paper/scroll(src)
		new /obj/item/paper/scroll(src)
		new /obj/item/paper/scroll(src)
		update_icon()

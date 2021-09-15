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
	maxhealth = 150

/obj/structure/barricade/wood_fence
	name = "wooden fence"
	desc = "Doesn't work much as defence."
	icon = 'icons/crescent13/obj/structures/structures.dmi'
	icon_state = "wood_fence4-8"
	maxhealth = 100

/obj/structure/barricade/wood_fence/division
	name = "wooden fence division"
	icon_state = "wood_fence_10"

/obj/structure/barricade/wood_fence/Initialize(mapload, material_name)
	. = ..()
	if(!material_name)
		material_name = "wood"
	material = get_material_by_name("[material_name]")
	if(!material)
		qdel(src)
		return
	name = "[material.display_name] fence"
	desc = "Doesn't work much as defence. It is made out of [material.display_name]."
	color = material.icon_colour
	maxhealth = material.integrity
	health = maxhealth

/obj/structure/barricade/wood_fence/get_material()
	return material

/obj/structure/barricade/wood_fence/attackby(obj/item/W as obj, mob/user as mob)
	user.setClickCooldown(user.get_attack_speed(W))
	if(istype(W, /obj/item/stack))
		var/obj/item/stack/D = W
		if(D.get_material_name() != material.name)
			return //hitting things with the wrong type of stack usually doesn't produce messages, and probably doesn't need to.
		if(health < maxhealth)
			if(D.get_amount() < 1)
				to_chat(user, "<span class='warning'>You need one sheet of [material.display_name] to repair \the [src].</span>")
				return
			visible_message("<span class='notice'>[user] begins to repair \the [src].</span>")
			if(do_after(user,20) && health < maxhealth)
				if(D.use(1))
					health = maxhealth
					visible_message("<span class='notice'>[user] repairs \the [src].</span>")
				return
		return
	else
		switch(W.damtype)
			if("fire")
				health -= W.force * 1
			if("brute")
				health -= W.force * 0.75
		if(material == (get_material_by_name(MAT_WOOD) || get_material_by_name(MAT_SIFWOOD)))
			playsound(loc, 'sound/effects/woodcutting.ogg', 100, 1)
		else
			playsound(src, 'sound/weapons/smash.ogg', 50, 1)
		CheckHealth()
		..()


/obj/structure/barricade/wood_fence/take_damage(var/damage)
	health -= damage
	CheckHealth()
	return

/obj/structure/barricade/wood_fence/attack_generic(var/mob/user, var/damage, var/attack_verb)
	visible_message("<span class='danger'>[user] [attack_verb] the [src]!</span>")
	if(material == get_material_by_name("resin"))
		playsound(loc, 'sound/effects/attackblob.ogg', 100, 1)
	else if(material == (get_material_by_name(MAT_WOOD) || get_material_by_name(MAT_SIFWOOD)))
		playsound(loc, 'sound/effects/woodcutting.ogg', 100, 1)
	else
		playsound(src, 'sound/weapons/smash.ogg', 50, 1)
	user.do_attack_animation(src)
	health -= damage
	CheckHealth()
	return


/obj/structure/barricade/wood_fence/ex_act(severity)
	switch(severity)
		if(1.0)
			dismantle()
		if(2.0)
			health -= 25
			CheckHealth()

/obj/structure/barricade/wood_fence/CanAllowThrough(atom/movable/mover, turf/target)//So bullets will fly over and stuff.
	. = ..()
	if(istype(mover) && mover.checkpass(PASSTABLE))
		return TRUE
	return FALSE

/obj/machinery/seed_storage/garden/seed_bin
	name = "seed bin"
	desc = "A bin full of seeds!"
	icon = 'icons/crescent13/obj/rack.dmi'
	icon_state = "seedbin-5"
	use_power = FALSE
	idle_power_usage = 0

/obj/machinery/biogenerator/grown_bin
	name = "grown bin"
	desc = "To create nutrients and other stuff out plants."
	icon = 'icons/crescent13/obj/rack.dmi'
	icon_state = "grownbin-5"
	use_power = FALSE
	idle_power_usage = 0


/*/obj/structure/bonfire/brazier
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

/obj/structure/table/rack
	name = "rack"
	desc = "A storage rack for holding equipment."
	icon = 'icons/obj/objects.dmi'
	icon_state = "rack"
	can_plate = 0
	can_reinforce = 0
	flipped = -1
	item_pixel_place = FALSE

/obj/structure/table/rack/Initialize(mapload)
	. = ..()
	verbs -= /obj/structure/table/verb/do_flip
	verbs -= /obj/structure/table/proc/do_put

/obj/structure/table/rack/update_connections()
	return

/obj/structure/table/rack/update_desc()
	return

/obj/structure/table/rack/update_icon()
	if(material) //VOREStation Add for rack colors based on materials
		color = material.icon_colour
	return

/obj/structure/table/rack/Initialize(mapload)
	material = get_material_by_name("wood")
	return ..()

/obj/structure/table/rack/shelf
	name = "shelving"
	desc = "Firm shelving for storage."
	icon = 'icons/obj/objects.dmi'
	icon_state = "shelf"

/obj/structure/table/rack/shelf/Initialize(mapload)
	material = get_material_by_name("wood")
	return ..()
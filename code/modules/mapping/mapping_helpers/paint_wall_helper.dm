/obj/effect/mapping_helpers/paint_wall
	name = "Paint Wall Helper"
	icon = 'icons/effects/paint_helpers.dmi'
	icon_state = "paint"
	late = TRUE
	/// What wall paint this helper will apply
	var/wall_paint
	/// What stripe paint this helper will apply
	var/stripe_paint

/obj/effect/mapping_helpers/paint_wall/LateInitialize()
	for(var/obj/effect/mapping_helpers/paint_wall/paint_helper in loc)
		if(paint_helper == src)
			continue
		WARNING("Duplicate paint helper found at [x], [y], [z]")
		qdel(src)
		return

	var/did_anything = FALSE

	if(istype(loc, /turf/closed/wall))
		var/turf/closed/wall/target_wall = loc
		target_wall.paint_wall(wall_paint)
		target_wall.paint_stripe(stripe_paint)
		did_anything = TRUE

	var/obj/structure/low_wall/low_wall = locate() in loc
	if(low_wall)
		low_wall.set_wall_paint(wall_paint)
		low_wall.set_stripe_paint(stripe_paint)
		did_anything = TRUE

	var/obj/structure/falsewall/falsewall = locate() in loc
	if(falsewall)
		falsewall.paint_wall(wall_paint)
		falsewall.paint_stripe(stripe_paint)
		did_anything = TRUE

	if(!did_anything)
		WARNING("Redundant paint helper found at [x], [y], [z]")

	qdel(src)

// Convert to color defines later, when we think up a good naming convention for them.
/obj/effect/mapping_helpers/paint_wall/cargo
	name = "Cargo Wall Paint"
	stripe_paint = "#5B4D41"
	icon_state = "paint_cargo"

/obj/effect/mapping_helpers/paint_wall/bridge
	name = "Bridge Wall Paint"
	stripe_paint = "#334E6D"
	icon_state = "paint_bridge"

/obj/effect/mapping_helpers/paint_wall/science
	name = "Science Wall Paint"
	stripe_paint = "#5C5167"
	icon_state = "paint_science"

/obj/effect/mapping_helpers/paint_wall/engineering
	name = "Engineering Wall Paint"
	stripe_paint = "#A18D00"
	icon_state = "paint_engineering"

/obj/effect/mapping_helpers/paint_wall/security
	name = "Security Wall Paint"
	stripe_paint = "#7B3131"
	icon_state = "paint_security"

/obj/effect/mapping_helpers/paint_wall/service
	name = "Service Wall Paint"
	stripe_paint = "#4E7C4E"
	icon_state = "paint_service"

/obj/effect/mapping_helpers/paint_wall/medbay
	name = "Medbay Wall Paint"
	stripe_paint = "#435C90"
	icon_state = "paint_medbay"

/obj/effect/mapping_helpers/paint_wall/neutral
	name = "Neutral Wall Paint"
	stripe_paint = COLOR_DARK
	icon_state = "paint_neutral"

/obj/effect/mapping_helpers/paint_wall/dark
	name = "Dark Wall Paint"
	stripe_paint = COLOR_ALMOST_BLACK
	icon_state = "paint_dark"

/obj/effect/mapping_helpers/paint_wall/syndicate
	name = "Syndicate Wall Paint (Trim Only)"
	stripe_paint = COLOR_BUBBLEGUM_RED
	icon_state = "paint_syndie"

/obj/effect/mapping_helpers/paint_wall/syndicate/full
	name = "Syndicate Wall Paint (Full)"
	wall_paint = "#464347"
	icon_state = "paint_syndie_full"

/obj/effect/mapping_helpers/paint_wall/hotel
	name = "Hotel Wall Paint"
	stripe_paint = "#54402D"
	wall_paint = "#303030"
	icon_state = "paint_hotel"

/obj/effect/mapping_helpers/paint_wall/hotel/wood
	name = "Hotel Wood Paint"
	stripe_paint = "#54402D"
	wall_paint = "#54402D"
	icon_state = "paint_hotel_wood"

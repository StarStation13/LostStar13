/datum/map_config/holestation
	map_name = "NTRV Holemaker II"
	map_path = "map_files/holestation"
	map_file = list(
		"holestation.dmm",
	)

	traits = list(
		list(
			"Up" = 1,
		),
		list(
			"Down" = -1,
			"Baseturf" = "/turf/open/openspace",
		),
	)
	space_ruin_levels = 5

	minetype = "lavaland"

	allow_custom_shuttles = TRUE

	overmap_object_type = /datum/overmap_object/shuttle/ship/holemaker

/datum/map_config/tradership/get_map_info()
	return "You're aboard the <b>[map_name],</b> a moderately-sized Nanotrasen research vessel."

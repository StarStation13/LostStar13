/datum/map_template/ruin/planetary
	prefix = "_maps/RandomRuins/Planet/"
	allow_duplicates = FALSE
	/// A bitfield representing the requirements of the ruin for it to be spawned (Planet properties are checked)
	var/planet_requirements = NONE

/datum/map_template/ruin/planetary/colony
	name = "Colony"
	id = "colony"
	description = "A colony."
	cost = 10
	suffix = "colony.dmm"
	planet_requirements = PLANET_HABITABLE
	unpickable = TRUE

/area/ruin/unpowered/colony

/area/ruin/unpowered/colony/outdoors
	outdoors = TRUE

/area/ruin/unpowered/colony/outdoors/cargo_bay
	name = "Colony Cargo Bay"

/area/ruin/unpowered/colony/external_airlock
	name = "Colony External Airlock"

/area/ruin/unpowered/colony/hallways
	name = "Colony Hallways"

/area/ruin/unpowered/colony/bathroom
	name = "Colony Bathroom"

/area/ruin/unpowered/colony/security
	name = "Colony Security"

/area/ruin/unpowered/colony/armory
	name = "Colony Armory"

/area/ruin/unpowered/colony/atmos
	name = "Colony Atmospherics"

/area/ruin/unpowered/colony/engineering
	name = "Colony Engineering"

/area/ruin/unpowered/colony/dorms
	name = "Colony Dormitories"

/area/ruin/unpowered/colony/mess_hall
	name = "Colony Mess Hall"

/area/ruin/unpowered/colony/medbay
	name = "Colony Medbay"

/area/ruin/unpowered/colony/operating_theatre
	name = "Colony Operating Theatre"

/area/ruin/unpowered/colony/ops
	name = "Colony Operations Center"

/area/ruin/unpowered/colony/secure_storage
	name = "Colony Secure Storage"

/datum/map_template/ruin/planetary/crashed_pod
	name = "Crashed Pod"
	id = "crashed_pod"
	description = "A crashed pod."
	cost = 5
	suffix = "crashed_pod.dmm"
	planet_requirements = PLANET_WRECKAGES

/area/ruin/unpowered/crashed_pod
	name = "Crashed Pod"

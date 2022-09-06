/datum/storyteller/guide
	name = "The Guide"
	desc = "The Guide will provide a balanced and varied experience. Consider this the default experience."

/datum/storyteller/sleeper
	name = "The Sleeper"
	desc = "The Sleeper will create less impactful events, especially ones involving combat or destruction. The chill experience."
	point_gains_multipliers = list(
		EVENT_TRACK_MUNDANE = 0.7,
		EVENT_TRACK_MODERATE = 0.7,
		EVENT_TRACK_MAJOR = 0.7,
		EVENT_TRACK_ROLESET = 0.7,
		EVENT_TRACK_OBJECTIVES = 0.7
		)
	guarantees_roundstart_roleset = FALSE
	tag_multipliers = list(TAG_COMBAT = 0.6, TAG_DESTRUCTIVE = 0.7)

/datum/storyteller/jester
	name = "The Jester"
	desc = "The Jester will create much more events, with higher possibilities of them repeating."
	event_repetition_multiplier = 0.8
	point_gains_multipliers = list(
		EVENT_TRACK_MUNDANE = 1.2,
		EVENT_TRACK_MODERATE = 1.4,
		EVENT_TRACK_MAJOR = 1.4,
		EVENT_TRACK_ROLESET = 1,
		EVENT_TRACK_OBJECTIVES = 1
		)
	population_min = 10

/datum/storyteller/warrior
	name = "The Warrior"
	desc = "The Warrior will create more impactful events, often focused on combat."
	point_gains_multipliers = list(
		EVENT_TRACK_MUNDANE = 1,
		EVENT_TRACK_MODERATE = 1.3,
		EVENT_TRACK_MAJOR = 1.3,
		EVENT_TRACK_ROLESET = 1,
		EVENT_TRACK_OBJECTIVES = 1
		)
	tag_multipliers = list(TAG_COMBAT = 1.5)
	population_min = 10

/datum/storyteller/ghost
	name = "The Ghost"
	desc = "The Ghost will not run a single event or create an antagonist."
	disable_distribution = TRUE
	population_max = 10

/datum/storyteller/random
	name = "The Icon"
	desc = "The Icon doesn't care about rules. He'll generate random events, and doesn't care if it creates \
	a story of triumph or utter hopelessness. It's all drama to him." // Subtle? Not even close

/// This is where we handle the randomness
/datum/storyteller/random/Initialize()
	event_repetition_multiplier = rand(0.1,1)
/// Max off at 2 times normal here for fun reasons
	starting_point_multipliers = list(
		EVENT_TRACK_MUNDANE = rand(0.1,2), \
		EVENT_TRACK_MODERATE = rand(0.1,2), \
		EVENT_TRACK_MAJOR = rand(0.1,2), \
		EVENT_TRACK_ROLESET = rand(0.1,2), \
		EVENT_TRACK_OBJECTIVES = rand(0.1,2) \
		)
	point_gains_multipliers = list( \
		EVENT_TRACK_MUNDANE = rand(0.1,2), \
		EVENT_TRACK_MODERATE = rand(0.1,2), \
		EVENT_TRACK_MAJOR = rand(0.1,2), \
		EVENT_TRACK_ROLESET = rand(0.1,2), \
		EVENT_TRACK_OBJECTIVES = rand(0.1,2) \
		)
	tag_multipliers = list(
		TAG_COMBAT = rand(0.1,2), \
		TAG_SPOOKY = rand(0.1,2), \
		TAG_DESTRUCTIVE = rand(0.1,2), \
		TAG_COMMUNAL = rand(0.1,2), \
		TAG_TARGETED = rand(0.1,2), \
		TAG_POSITIVE = rand(0.1,2), \
		TAG_CREW_ANTAG = rand(0.1,2), \
		TAG_TEAM_ANTAG = rand(0.1,2), \
		TAG_OUTSIDER_ANTAG = rand(0.1,2), \
		TAG_OVERMAP = rand(0.1,2), \
		TAG_SPACE = rand(0.1,2), \
		TAG_PLANETARY = rand(0.1,2), \
		)
	/// Anywhere all the way up to double normal
	cost_variance = rand(0.1,30)
	roundstart_points_variance = rand(0.1,30)
	/// NOTHING is certain.
	guarantees_roundstart_roleset = pick(TRUE,FALSE)

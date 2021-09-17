//////////////////////////////////
//		Research Director
//////////////////////////////////
/datum/job/magus
	title = "Magus"
	flag = MAGUS
	departments_managed = list(DEPARTMENT_RESEARCH)
	departments = list(DEPARTMENT_RESEARCH, DEPARTMENT_COMMAND)
	sorting_order = 2
	disallow_jobhop = TRUE
	pto_type = PTO_SCIENCE
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Lord"
	selection_color = "#AD6BAD"
	idtype = null
	req_admin_notify = 1
	access = null
	minimal_access = null

	minimum_character_age = 25
	minimal_player_age = 14
	ideal_character_age = 50

	outfit_type = null
	job_description = "The Magus is well-versed in all magic related topics and as such, may be feared for their versatility in this domain. Although not that different from scribes, they however dedicate their time to magic researches."
	alt_titles = list(
		"Magister" = /datum/alt_title/magister
		)

// Research Director Alt Titles
/datum/alt_title/magister
	title = "Magister"

//////////////////////////////////
//			Scribe
//////////////////////////////////
/datum/job/scribe
	title = "Scribe"
	flag = SCRIBE
	departments = list(DEPARTMENT_RESEARCH)
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 5
	spawn_positions = 3
	supervisors = "the Magus"
	selection_color = "#633D63"
	idtype = null
	economic_modifier = 7
	access = null
	minimal_access = null

	minimal_player_age = 14

	outfit_type = /decl/hierarchy/outfit/job/science/scientist
	pto_type = PTO_SCIENCE
	job_description = "A scribe isn’t really tied to any duty at all, but is expected to mantain their rooms and the library in an orderly state. They may however find themselves conducting missions such as recovering artifacts, studying and other various tasks."

//////////////////////////////////
//			Elder Scribe
//////////////////////////////////
/datum/job/elder_scribe
	title = "Elder Scribe"
	flag = ESCRIBE
	departments = list(DEPARTMENT_RESEARCH)
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Research Director"
	selection_color = "#633D63"
	idtype = /obj/item/card/id/science/xenobiologist
	pto_type = PTO_SCIENCE
	economic_modifier = 7
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_hydroponics, access_tox)
	minimal_access = list(access_research, access_xenobiology, access_hydroponics, access_tox_storage,access_tox)

	minimal_player_age = 14

	outfit_type = /decl/hierarchy/outfit/job/science/xenobiologist
	job_description = "An Elder Scribe is a glorified title for a Scribe in charge of mantaining the library. This often rotatory position is taken voluntarily to take a break from their studies while still being productive. If anything, it is more of an honorary title than a superior status compared to regular scribes."

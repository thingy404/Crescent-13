var/datum/announcement/minor/captain_announcement = new(do_newscast = 1)

//////////////////////////////////
//			Lord
//////////////////////////////////

/datum/job/lord
	title = "Lord"
	flag = LORD
	disallow_jobhop = TRUE
	departments = list(DEPARTMENT_COMMAND)
	sorting_order = 3 // Above everyone.
	departments_managed = list(DEPARTMENT_COMMAND)
	department_flag = ENGSEC
	pto_type = PTO_COMMAND
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High King"
	idtype = null
	selection_color = "#2F2F7F"
	req_admin_notify = 1
	access = null
	minimal_access = null
	minimal_player_age = 14

	minimum_character_age = 25
	ideal_character_age = 30

	outfit_type = null
	job_description = "The Lord is the most important person in the town, and is always to be protected and prioritized. The lord act as leader of the town, and has the final say on any matter. Normally he is free to relax in his fort or take some walks with his Royal Guards around the town, but their main role is to provide the citizens protection and safety."

//////////////////////////////////
//		Treasurer
//////////////////////////////////
/datum/job/treasurer
	title = "Treasurer"
	flag = TREASURER
	departments = list(DEPARTMENT_COMMAND, DEPARTMENT_CIVILIAN, DEPARTMENT_CARGO)
	sorting_order = 2 // Above the QM, below captain.
	departments_managed = list(DEPARTMENT_CIVILIAN, DEPARTMENT_CARGO)
	department_flag = CIVILIAN
	disallow_jobhop = TRUE
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Lord"
	idtype = null
	pto_type = PTO_COMMAND
	selection_color = "#1D1D4F"
	req_admin_notify = 1
	minimal_player_age = 10

	minimum_character_age = 25
	ideal_character_age = 50

	outfit_type = null
	job_description = "The treasurer handles all that is economy in the fort. They are to order the servants for groceries and give them the corresponding money for it, keep extremely good care of the wealth in the vault, and assist the Lord in any pucharses or investments. However, their main duty is to collect the payment for the stablishments owned by certain citizens."

	access = null
	minimal_access = null

//////////////////////////////////
//		Command Secretary
//////////////////////////////////

/datum/job/secretary
	title = "Royal Servant"
	flag = SERVANT
	departments = list(DEPARTMENT_COMMAND)
	department_accounts = list(DEPARTMENT_COMMAND)
	department_flag = CIVILIAN
	disallow_jobhop = TRUE
	pto_type = PTO_CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Lord"
	selection_color = "#1D1D4F"

	access = null
	minimal_access = null

	outfit_type = null
	job_description = "A Maid or Servant is expected to keep the fort immaculate at all times. ontop of this, they are also expected to keep the kitchen well stocked, cook for the Lord, and overall make sure that they are well and comfortable."

	alt_titles = list(
		"Maid" = /datum/alt_title/maid
	)

/datum/alt_title/maid
	title = "Maid"

//////////////////////////////////
//		Royal Guard
//////////////////////////////////

/datum/job/royal_guard
	title = "Royal Guard"
	flag = RGUARD
	departments = list(DEPARTMENT_COMMAND)
	department_accounts = list(DEPARTMENT_COMMAND)
	department_flag = CIVILIAN
	disallow_jobhop = TRUE
	pto_type = PTO_CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Lord"
	selection_color = "#1D1D4F"

	access = null
	minimal_access = null

	outfit_type = null
	job_description = "Personal guard of the Lord, you carry out his will whenever he commands to do so. As a royal protector, you the highest authority in the castle, after the Lord's."

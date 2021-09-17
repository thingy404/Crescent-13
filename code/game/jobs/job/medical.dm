//////////////////////////////////
//		Healer
//////////////////////////////////
/datum/job/healer
	title = "Healer"
	flag = HEALER
	departments = list(DEPARTMENT_MEDICAL)
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 5
	spawn_positions = 3
	supervisors = "the Law and the Lord"
	selection_color = "#013D3B"
	pto_type = PTO_MEDICAL
	idtype = null
	access = null
	minimal_access = null
	outfit_type = null
	job_description = "A Healer is a physician, experienced or otherwise, who kindly dedicated themselves to the aid of the ill or injured."
	alt_titles = list(
		"Priest" = /datum/alt_title/priest,
		)

// Medical Doctor Alt Titles
/datum/alt_title/priest
	title = "Priest"
	title_blurb = "A Healer generally attuned to magic. Usually seen more as pacifist councelors, they can go to great lengths to save one's life. Not all priests are magic users."

//////////////////////////////////
//			Plague Doctor
//////////////////////////////////
/datum/job/plague_doctor
	title = "Plague Doctor"
	flag = PDOCTOR
	departments = list(DEPARTMENT_MEDICAL)
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Law"
	selection_color = "#013D3B"
	pto_type = PTO_MEDICAL
	idtype = null
	access = null
	minimal_access = null
	minimal_player_age = 3

	outfit_type = /decl/hierarchy/outfit/job/medical/chemist
	job_description = "A Plague Doctor is a Healer who is more specialized in diseases, like the Plague. Their name comes from the outfit they wear to shield themselves from contagious diseases when they are practicing medicine, and is often worn as regular clothing to facilitate recognition to those who need them."

//////////////////////////////////
//			Chirurgeon
//////////////////////////////////
/datum/job/chirurgeon
	title = "Chirurgeon"
	flag = CHIRURGEON
	departments = list(DEPARTMENT_MEDICAL)
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Law and the Lord"
	selection_color = "#013D3B"
	pto_type = PTO_MEDICAL
	idtype = null
	access = null
	minimal_access = null
	outfit_type = null
	job_description = "Experienced healer of questionable practices or no different than the meat butcher of the town, the chirurgeon excels at cutting a wide variety of flesh. Especially the one of fellow citizens unfortunate enough to end up on their table."

//////////////////////////////////
//			Alchemist
//////////////////////////////////
/datum/job/alchemist
	title = "Alchemist"
	flag = ALCHEMIST
	departments = list(DEPARTMENT_MEDICAL)
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 5
	spawn_positions = 3
	supervisors = "the Law and the Lord"
	selection_color = "#013D3B"
	pto_type = PTO_MEDICAL
	idtype = null
	access = null
	minimal_access = null
	outfit_type = null
	job_description = "The Alchemist is the one that handles the creation and experimentation of potions and beverages. They are able to make lethal poisons, and healing elixirs, and their limitation is only their morality."

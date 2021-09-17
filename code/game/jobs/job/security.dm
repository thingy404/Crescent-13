//////////////////////////////////
//			Knight
//////////////////////////////////
/datum/job/knight
	title = "Knight"
	flag = KNIGHT
	departments_managed = list(DEPARTMENT_SECURITY)
	departments = list(DEPARTMENT_SECURITY, DEPARTMENT_COMMAND)
	sorting_order = 2
	department_flag = ENGSEC
	disallow_jobhop = TRUE
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Lord"
	selection_color = "#8E2929"
	idtype = null
	disallow_jobhop = TRUE
	pto_type = PTO_SECURITY
	req_admin_notify = 1
	access = null
	minimal_access = null
	minimum_character_age = 25
	minimal_player_age = 14

	outfit_type = null
	job_description = "The Knight is a noble extremely loyal to the King, and oftentimes, by extension, to the Lord overseeing this town. The Knight is the representing face of the Militia, and answers directly to the lord. He cooperates with the Master at Arms to plan how to distribute the avaiable militiamen into the most efficient patrols and guardposts, and alternate them so that they do not grow weary of mantaining the same position all the time."

//////////////////////////////////
//			Master-at-Arms
//////////////////////////////////
/datum/job/master
	title = "Master-at-Arms"
	flag = MASTER
	departments = list(DEPARTMENT_SECURITY)
	sorting_order = 1
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Lord"
	selection_color = "#601C1C"
	idtype = null
	pto_type = PTO_SECURITY
	access = null
	minimal_access = null
	minimal_player_age = 5

	outfit_type = null
	job_description = "The Master at Arms keeps the Militia together and keeps it from falling apart. They work with the Knight to plannify the best use of the Militia for patrols and guard posts, making sure the Militia doesn’t grow weary of their duties by alternating their posts every now and then. The Master at Arms has the final say in this duty."

//////////////////////////////////
//			Militiaman
//////////////////////////////////
/datum/job/militia
	title = "Militiaman"
	flag = MILITIA
	departments = list(DEPARTMENT_SECURITY)
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	pto_type = PTO_SECURITY
	supervisors = "the Master-at-Arms"
	idtype = null
	selection_color = "#601C1C"
	economic_modifier = 4
	access = null
	minimal_access = null
	minimal_player_age = 3

	outfit_type = null
	job_description = "The very core and spine of the Militia. While the term is masculine, the Militia may also hold Militiawomen, although rare. A Militiamen responds to the chain of command in the Militia, being the Knight, and Master at Arms, before heeding the orders of the Lord."

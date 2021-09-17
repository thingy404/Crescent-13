//////////////////////////////////
//			Peasant
//////////////////////////////////
/datum/job/peasant
	title = "Peasant"
	flag = PEASANT
	departments = list(DEPARTMENT_CIVILIAN)
	sorting_order = -1
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "the Law and the Lord"
	selection_color = "#515151"
	access = null
	minimal_access = null
	timeoff_factor = 0

	outfit_type = null

/*
/datum/job/peasant/get_access()
	if(config_legacy.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()

/datum/job/peasant/New()
	..()
	if(config)
		total_positions = config_legacy.limit_visitors
		spawn_positions = config_legacy.limit_visitors

/datum/job/peasant/get_access()
	return list()
*/

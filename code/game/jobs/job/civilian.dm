//Food

//////////////////////////////////
//			Inn Keeper
//////////////////////////////////

/datum/job/bartender
	title = "Inn Owner"
	flag = INNKEEPER
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Treasurer and the Lord"
	selection_color = "#515151"
	idtype = null
	pto_type = PTO_CIVILIAN
	access = null
	minimal_access = null

	outfit_type = /decl/hierarchy/outfit/job/service/bartender
	job_description = "An Inn keeper serves drinks for the thirsty. They have permission to charge for drinks or deny service to unruly patrons."
	alt_titles = list(
		"Inn Keeper" = /datum/alt_title/innkeeper
	)

/datum/alt_title/innkeeper
	title = "Inn Keeper"

//////////////////////////////////
//			   Cook
//////////////////////////////////

/datum/job/chef
	title = "Chef"
	flag = CHEF
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Head of Personnel"
	selection_color = "#515151"
	pto_type = PTO_CIVILIAN
	idtype = null
	access = null
	minimal_access = null

	outfit_type = null
	job_description = "A Chef cooks food for the population. They have permission to charge for food or deny service to unruly diners in accordance to the inn keeper's directives, gold earned is then given to the inn keeper."
	alt_titles = list(
		"Cook" = /datum/alt_title/cook
	)

// Chef Alt Titles
/datum/alt_title/cook
	title = "Cook"
	title_blurb = "A Cook has the same duties, though they may be less experienced."

//////////////////////////////////
//			Farmer
//////////////////////////////////

/datum/job/farmer
	title = "Farmer"
	flag = FARMER
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Treasurer and the Lord"
	selection_color = "#515151"
	pto_type = PTO_CIVILIAN
	pto_type = PTO_CIVILIAN
	idtype = null
	access = null
	minimal_access = null

	outfit_type = /decl/hierarchy/outfit/job/service/gardener
	job_description = "Your duty is to grow plants and then sellf the fruit of your hard labor."
	alt_titles = list("Gardener" = /datum/alt_title/gardener)

//Botanist Alt Titles
/datum/alt_title/gardener
	title = "Gardener"
	title_blurb = "A Gardener may be less professional than their counterparts, and are more likely to tend to the public gardens if they aren't needed elsewhere."


//Misc jobs
//////////////////////////////////
//			Fisher
//////////////////////////////////
/datum/job/fisher
	title = "Fisher"
	flag = FISHER
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	pto_type = PTO_CIVILIAN
	supervisors = "the Treasurer and the Lord"
	selection_color = "#515151"
	idtype = null
	access = null
	minimal_access = null

	outfit_type = null
	job_description = "You are a fisher. Your dedication in this task shows how a fisher excel at this very particular activity."

//////////////////////////////////
//			Hunter
//////////////////////////////////
/datum/job/hunter
	title = "Hunter"
	flag = HUNTER
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	pto_type = PTO_CIVILIAN
	supervisors = "the Treasurer and the Lord"
	selection_color = "#515151"
	idtype = null
	access = null
	minimal_access = null

	outfit_type = null
	job_description = "You search, track and hunt animals for food. With traps or with a bow, your skill is to be reckoned with."

//////////////////////////////////
//				Bard
//////////////////////////////////

/datum/job/bard
	title = "Bard"
	flag = BARD
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Law and the Lord"
	selection_color = "#515151"
	idtype = null
	access = null
	minimal_access = null

	outfit_type = null
	job_description = "Share your tales of dragons and princesses with the population, animate the inn with maddening music and enjoy your freedom."

//////////////////////////////////
//			Jester
//////////////////////////////////
/*
/datum/job/jester
	title = "Jester"
	flag = JESTER
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the God of Laughter"
	selection_color = "#515151"
	access = null
	minimal_access = null
	pto_type = PTO_CIVILIAN

	outfit_type = null
	job_description = "A tortured mind that has sworn to bring joy and laughter into this wretched world. Failure is inevitable but you can still make a Lord laugh (success not guaranteed)."
*/

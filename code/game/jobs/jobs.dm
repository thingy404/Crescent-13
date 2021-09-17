
var/const/ENGSEC			=(1<<0)

var/const/LORD				=(1<<0)
var/const/RGUARD			=(1<<1)
var/const/KNIGHT			=(1<<2)
var/const/MASTER			=(1<<3)
var/const/MILITIA			=(1<<4)
var/const/INTERN			=(1<<5)
//var/const/CHIEF				=(1<<5)
//var/const/ENGINEER			=(1<<6)
//var/const/ATMOSTECH			=(1<<7)

var/const/MEDSCI			=(1<<1)

var/const/MAGUS				=(1<<0)
var/const/SCRIBE			=(1<<1)
var/const/PDOCTOR			=(1<<2)
var/const/HEALER			=(1<<3)
var/const/CHIRURGEON		=(1<<4)
var/const/ESCRIBE			=(1<<5)
var/const/ALCHEMIST 		=(1<<6)

var/const/CIVILIAN			=(1<<2)

var/const/TREASURER			=(1<<0)
var/const/INNKEEPER			=(1<<1)
var/const/FARMER			=(1<<2)
var/const/CHEF				=(1<<3)
var/const/FISHER			=(1<<4)
var/const/HUNTER			=(1<<5)
var/const/QUARTERMASTER		=(1<<6)
var/const/MERCHANT			=(1<<7)
var/const/BARD				=(1<<8)
var/const/CHAPLAIN			=(1<<9)
var/const/SERVANT			=(1<<10)
var/const/PEASANT			=(1<<11)

//VOREStation Add
var/const/TALON				=(1<<3)

var/const/TALCAP			=(1<<0)
var/const/TALPIL			=(1<<1)
var/const/TALDOC			=(1<<2)
var/const/TALSEC			=(1<<3)
var/const/TALENG			=(1<<4)
//VOREStation Add End

/proc/guest_jobbans(var/job)
	return ( (job in SSjob.get_job_titles_in_department(DEPARTMENT_COMMAND)) || (job in SSjob.get_job_titles_in_department(DEPARTMENT_SYNTHETIC)) || (job in SSjob.get_job_titles_in_department(DEPARTMENT_SECURITY)) )

/proc/get_job_datums()
	var/list/occupations = list()
	var/list/all_jobs = typesof(/datum/job)

	for(var/A in all_jobs)
		var/datum/job/job = new A()
		if(!job)	continue
		occupations += job

	return occupations

/proc/get_alternate_titles(var/job)
	var/list/jobs = get_job_datums()
	var/list/titles = list()

	for(var/datum/job/J in jobs)
		if(J.title == job)
			titles = J.alt_titles

	return titles

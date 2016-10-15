/datum/map/kaliningrad
	allowed_jobs = list(/datum/job/sovsoldier, /datum/job/sovmg, /datum/job/sovrad, /datum/job/sovdep, /datum/job/sovgren,
						/datum/job/sovserg, /datum/job/sovmed,
						/datum/job/sovint, /datum/job/sovcom
						)

/datum/job/sovsoldier
	title = "Strelok"
	department = "Science"
	total_positions = 12
	spawn_positions = 12
	supervisors = "the higher command"
	selection_color = "#DF0000"
	outfit_type = /decl/hierarchy/outfit/job/soviet

/datum/job/sovmg
	title = "Pulemetchik"
	department = "Science"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the higher command"
	selection_color = "D00D0D"
	outfit_type = /decl/hierarchy/outfit/job/soviet/pulemetchik

/datum/job/sovrad
	title = "Radiotelefonist"
	department = "Science"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the higher command"
	selection_color = "D00D0D"
	outfit_type = /decl/hierarchy/outfit/job/soviet/radiotelefonist

/datum/job/sovdep
	title = "Zamestitel' komandira otdeleniya"
	department = "Science"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the higher command"
	selection_color = "C30A0A"
	outfit_type = /decl/hierarchy/outfit/job/soviet/zamkomotd

/datum/job/sovgren
	title = "Strelok-Granatometchik"
	department = "Science"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the higher command"
	selection_color = "D00D0D"
	outfit_type = /decl/hierarchy/outfit/job/soviet/granatometchik

/datum/job/sovserg
	title = "Komandir Otdeleniya"
	department = "Science"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the higher command"
	selection_color = "C30A0A"
	outfit_type = /decl/hierarchy/outfit/job/soviet/sergant

/datum/job/sovmed
	title = "Saninstruktor"
	department = "Science"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the higher command"
	selection_color = "C30A0A"
	outfit_type = /decl/hierarchy/outfit/job/soviet/saninstruktor

/datum/job/sovint
	title = "Praporshik"
	department = "Science"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the higher command"
	selection_color = "C30A0A"
	outfit_type = /decl/hierarchy/outfit/job/soviet/praporshik

/datum/job/sovcom
	title = "Komandir Vzvoda"
	department = "Science"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the higher command"
	selection_color = "AF0404"
	outfit_type = /decl/hierarchy/outfit/job/soviet/leitenant

//Cold War Job Loadouts

/decl/hierarchy/outfit/job/soviet
	name = OUTFIT_JOB_NAME("Strelok")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid

/decl/hierarchy/outfit/job/soviet/praporshik
	name = OUTFIT_JOB_NAME("Praporshik")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/praporshik

/decl/hierarchy/outfit/job/soviet/granatometchik
	name = OUTFIT_JOB_NAME("Strelok-granatometchik")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/efreitor

/decl/hierarchy/outfit/job/soviet/zamkomotd
	name = OUTFIT_JOB_NAME("Zamestitel Komandira Otdeleniya")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/efreitor

/decl/hierarchy/outfit/job/soviet/saninstruktor
	name = OUTFIT_JOB_NAME("Saninstruktor")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/jlieutenant

/decl/hierarchy/outfit/job/soviet/radiotelefonist
	name = OUTFIT_JOB_NAME("Radiotelefonist")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/efreitor

/decl/hierarchy/outfit/job/soviet/pulemetchik
	name = OUTFIT_JOB_NAME("Pulemetchik")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/efreitor

/decl/hierarchy/outfit/job/soviet/sergant
	name = OUTFIT_JOB_NAME("Komandir Otdeleniya")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/sergeant

/decl/hierarchy/outfit/job/soviet/sergant
	name = OUTFIT_JOB_NAME("Komandir Otdeleniya")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/sergeant

/decl/hierarchy/outfit/job/soviet/leitenant
	name = OUTFIT_JOB_NAME("Komandir Vzvoda")
	uniform = /obj/random/sovietunder
	shoes = null
	glasses = null
	l_hand = null
	belt = null
	id_type = /obj/item/clothing/accessory/badge/militaryid/lieutenant
///////////////////////////////
/datum/job/warpac_commander
	title = "Comandir Vzvoda"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#530909"
//	access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook, access_ru_commander)
//	minimal_access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook, access_ru_commander)
//	spawn_location = "JoinLateRussia"

/datum/job/commander_russian/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(50))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"


/datum/job/warpac_comdeputy
	title = "Zamestitel' comandira vzvoda"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#530909"
//	access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook, access_ru_commander)
//	minimal_access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook, access_ru_commander)
//	spawn_location = "JoinLateRussia"

/datum/job/commander_russian/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(80))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

///////////////////////////////
/datum/job/warpac_squadleader
	title = "Komandir Otdeleniya"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	head_position = 1
	selection_color = "#770e0e"
//	access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook)
//	minimal_access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook)
//	spawn_location = "JoinLateRussia"

/datum/job/warpac_squadleadern/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(15))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

////////////////////////
/datum/job/warpac_medic
	title = "Sanitar"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	selection_color = "#770e0e"
//	access = list(access_ru_soldier, access_ru_medic)
//	minimal_access = list(access_ru_soldier, access_ru_medic)
//	spawn_location = "JoinLateRussia"

/datum/job/warpac_medic/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(10))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"


/datum/job/warpac_surgeon
	title = "Polevoi Doktor"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#770e0e"
//	access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist)
//	minimal_access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist)
//	spawn_location = "JoinLateRussia"

/datum/job/warpac_surgeon/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(20))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/datum/job/warpac_engie
	title = "Saper"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	selection_color = "#770e0e"
//	access = list(access_ru_soldier, access_ru_engineer)
//	minimal_access = list(access_ru_soldier, access_ru_engineer)
//	spawn_location = "JoinLateRussia"

/datum/job/warpac_engie/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

///////////////////////////////
/datum/job/warpac_lmg
	title = "Pulemetchik"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	selection_color = "#770e0e"
//	access = list(access_ru_soldier, access_ru_heavy_weapon)
//	minimal_access = list(access_ru_soldier, access_ru_heavy_weapon)
//	spawn_location = "JoinLateRussia"

/datum/job/heavy_weapon_russian/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"
//////////////////////////

/datum/job/warpac_private
	title = "Strelok"
	faction = "Station"
	total_positions = 8
	spawn_positions = 8
	selection_color = "#770e0e"
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
//	spawn_location = "JoinLateRussia"

/datum/job/warpac_private/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/datum/job/warpac_corporal
	title = "Starshiy Strelok"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	selection_color = "#770e0e"
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
//	spawn_location = "JoinLateRussia"

/datum/job/warpac_corporal/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/datum/job/warpac_radio
	title = "Radiotelefonist"
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	selection_color = "#770e0e"
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
//	spawn_location = "JoinLateRussia"

/datum/job/warpac_radio/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/////////////////////////////
/datum/job/nato_commander
	title = "Platoon Commander"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#2d2d63"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"

/datum/job/nato_commander/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(10))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_comdeputy
	title = "Platoon sergeant"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#2d2d63"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"

/datum/job/nato_commander/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(20))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_messenger
	title = "Messenger"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#2d2d63"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"

/datum/job/nato_messenger/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(50))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_squadleader
	title = "Squad Leader"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	head_position = 1
	selection_color = "#4c4ca5"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"

/datum/job/nato_squadleader/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(50))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_fireteamleader
	title = "Fireteam Leader"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	head_position = 1
	selection_color = "#4c4ca5"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"

/datum/job/nato_fireteamleader/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(6))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_fireteamlmg
	title = "Fireteam Designated Automatic Rifleman"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	head_position = 1
	selection_color = "#4c4ca5"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"

/datum/job/nato_fireteamlmg/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(3))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_fireteamammo
	title = "Fireteam Assistant Automatic Rifleman"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	head_position = 1
	selection_color = "#4c4ca5"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"

/datum/job/nato_fireteamammo/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(3))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_fireteamscout
	title = "Fireteam Rifleman"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	head_position = 1
	selection_color = "#4c4ca5"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"


/datum/job/nato_fireteamscout/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(6))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_combatmedic
	title = "Field Medic"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	head_position = 1
	selection_color = "#4c4ca5"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"


/datum/job/nato_combatmedic/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(10))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_corpsman
	title = "Hospital Corpsman"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#4c4ca5"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	spawn_location = "JoinLateNATO"


/datum/job/nato_corpsman/(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(10))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

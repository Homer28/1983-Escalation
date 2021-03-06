
/*
 * Ushanka
 */
/obj/item/clothing/head/sovietushanka
	name = "ushanka"
	desc = "That's the standard-issue ushanka. Used by Soviet Army"
	icon_state = "sovietushankaup"
	item_state = "sovietushankaup"
	flags_inv = HIDEEARS
	cold_protection = HEAD

/obj/item/clothing/head/sovietushanka/attack_self(mob/user as mob)
	if(src.icon_state == "sovietushankaup")
		src.icon_state = "sovietushankadown"
		src.item_state = "sovietushankadown"
		user << "You lower the ear flaps on the ushanka."
	else
		src.icon_state = "sovietushankaup"
		src.item_state = "sovietushankaup"
		user << "You raise the ear flaps on the ushanka."


/obj/item/clothing/head/helmet/ssh68
	name = "SSh-68 helmet"
	desc = "That's the helmet used by Warsaw Pact armies."
	icon_state = "ssh68helmet"
	armor = list(melee = 25, bullet = 30, laser = 0,energy = 0, bomb = 35, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/ssh60
	name = "SSh-60 helmet"
	desc = "That's the helmet used by Warsaw Pact armies."
	icon_state = "ssh60helmet"
	armor = list(melee = 25, bullet = 20, laser = 0,energy = 0, bomb = 30, bio = 0, rad = 0)


/obj/item/clothing/head/helmet/m1
	name = "M1 helmet"
	desc = "That's the helmet used by NATO."
	icon_state = "m1helmet"
	armor = list(melee = 25, bullet = 20, laser = 0,energy = 0, bomb = 35, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/m1/winter
	name = "M1 helmet"
	icon_state = "m1helmet-winter"

/obj/item/clothing/head/helmet/pasgt
	name = "PASGT M81 helmet"
	desc = "That's the experimental helmet used by NATO."
	icon_state = "pasgtm81-olive"
	armor = list(melee = 25, bullet = 35, laser = 0,energy = 0, bomb = 30, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/pasgt/winter
	icon_state = "pasgtm81-winter"

<<<<<<< HEAD
/obj/structure/ladder
	name = "ladder"
	desc = "A ladder.  You can climb it up and down."
	icon_state = "ladderdown"
	icon = 'icons/obj/structures.dmi'
	density = 0
	opacity = 0
	anchored = 1

	var/allowed_directions = DOWN
	var/obj/structure/ladder/target_up
	var/obj/structure/ladder/target_down

/obj/structure/ladder/initialize()
	// the upper will connect to the lower
	if(allowed_directions & DOWN) //we only want to do the top one, as it will initialize the ones before it.
		for(var/obj/structure/ladder/L in GetBelow(src))
			if(L.allowed_directions & UP)
				target_down = L
				L.target_up = src
				return
	update_icon()

/obj/structure/ladder/Destroy()
	if(target_down)
		target_down.target_up = null
		target_down = null
	if(target_up)
		target_up.target_down = null
		target_up = null
	return ..()

/obj/structure/ladder/attackby(obj/item/C as obj, mob/user as mob)
	attack_hand(user)
	return

/obj/structure/ladder/attack_hand(var/mob/M)
	var/move = moveOccupant(M)
	if(move)
		var/text = (move == UP ? "up" : "down")
		M.visible_message("<span class='notice'>\The [M] climbs [text] \the [src]!</span>",
		"You climb [text] \the [src]!",
		"You hear the grunting and clanging of a metal ladder being used.")

/obj/structure/ladder/proc/moveOccupant(var/mob/M)
	if((!target_up && !target_down) || (target_up && !istype(target_up.loc, /turf) || (target_down && !istype(target_down.loc,/turf))))
		M << "<span class='notice'>\The [src] is incomplete and can't be climbed.</span>"
		return 0
	var/obj/structure/ladder/target = target_down ? target_down : target_up
	if(target_down && target_up)
		var/direction = alert(M,"Do you want to go up or down?", "Ladder", "Up", "Down", "Cancel")

		if(direction == "Cancel")
			return 0

		if(!M.Adjacent(src))
			M << "<span class='warning'>You need to be next to \the [src] to start climbing.</span>"
			return 0

		switch(direction)
			if("Up")
				target = target_up
			if("Down")
				target = target_down
	if(!target)
		return 0

	var/turf/T = target.loc
	for(var/atom/A in T)
		if(!A.CanPass(M))
			M << "<span class='notice'>\The [A] is blocking \the [src].</span>"
			return 0
	if(M.Move(T))
		return target == target_up ? UP : DOWN
	return 0

/obj/structure/ladder/CanPass(obj/mover, turf/source, height, airflow)
	return airflow || !density

/obj/structure/ladder/attack_ghost(var/mob/M)
	moveOccupant(M)

/obj/structure/ladder/update_icon()
	icon_state = "ladder[!!(allowed_directions & UP)][!!(allowed_directions & DOWN)]"

/obj/structure/ladder/up
	allowed_directions = UP

/obj/structure/ladder/updown
	allowed_directions = UP|DOWN

=======
//////////////////////////////
//Contents: Ladders, Stairs.//
//////////////////////////////
>>>>>>> 0ebd85e32fdf3027e9d72c10db8481534bd2c036

/obj/structure/stairs
	name = "Stairs"
	desc = "Stairs leading to another deck.  Not too useful if the gravity goes out."
	icon = 'icons/obj/stairs.dmi'
	density = 0
	opacity = 0
	anchored = 1

	initialize()
		for(var/turf/turf in locs)
			var/turf/simulated/open/above = GetAbove(turf)
			if(!above)
				warning("Stair created without level above: ([loc.x], [loc.y], [loc.z])")
				return qdel(src)
			if(!istype(above))
				above.ChangeTurf(/turf/simulated/open)

	Uncross(atom/movable/A)
		if(A.dir == dir)
			// This is hackish but whatever.
			var/turf/target = get_step(GetAbove(A), dir)
			var/turf/source = A.loc
			if(target.Enter(A, source))
				A.loc = target
				target.Entered(A, source)
			return 0
		return 1

	CanPass(obj/mover, turf/source, height, airflow)
		return airflow || !density

	// type paths to make mapping easier.
	north
		dir = NORTH
		bound_height = 64
		bound_y = -32
		pixel_y = -32

	south
		dir = SOUTH
		bound_height = 64

	east
		dir = EAST
		bound_width = 64
		bound_x = -32
		pixel_x = -32

	west
		dir = WEST
		bound_width = 64


/obj/structure/ladder
	name = "ladder"
	desc = "A sturdy metal ladder."
	icon = 'icons/obj/structures.dmi'
	icon_state = "ladder11"
	var/id = null
	var/height = 0							//the 'height' of the ladder. higher numbers are considered physically higher
	var/obj/structure/ladder/down = null	//the ladder below this one
	var/obj/structure/ladder/up = null		//the ladder above this one

/obj/structure/ladder/unbreakable //mostly useful for awaymissions to prevent halting progress in a mission
	name = "sturdy ladder"
	desc = "An extremely sturdy metal ladder."


/obj/structure/ladder/New()
	spawn(8)
		for(var/obj/structure/ladder/L in world)
			if(L.id == id)
				if(L.height == (height - 1))
					down = L
					continue
				if(L.height == (height + 1))
					up = L
					continue

			if(up && down)	//if both our connections are filled
				break
		update_icon()

/obj/structure/ladder/update_icon()
	if(up && down)
		icon_state = "ladder11"

	else if(up)
		icon_state = "ladder10"

	else if(down)
		icon_state = "ladder01"

	else	//wtf make your ladders properly assholes
		icon_state = "ladder00"

/obj/structure/ladder/proc/go_up(mob/user,is_ghost)
	if(!is_ghost)
		show_fluff_message(1,user)
		up.add_fingerprint(user)
	user.loc = get_turf(up)

/obj/structure/ladder/proc/go_down(mob/user,is_ghost)
	if(!is_ghost)
		show_fluff_message(0,user)
		down.add_fingerprint(user)
	user.loc = get_turf(down)

/obj/structure/ladder/proc/use(mob/user,is_ghost=0)
	if(up && down)
		switch( alert("Go up or down the ladder?", "Ladder", "Up", "Down", "Cancel") )
			if("Up")
				go_up(user,is_ghost)
			if("Down")
				go_down(user,is_ghost)
			if("Cancel")
				return
	else if(up)
		go_up(user,is_ghost)
	else if(down)
		go_down(user,is_ghost)

	if(!is_ghost)
		add_fingerprint(user)

/obj/structure/ladder/attack_hand(mob/user)
	if(can_use(user))
		use(user)

/obj/structure/ladder/attackby(obj/item/weapon/W, mob/user, params)
	return attack_hand(user)


/obj/structure/ladder/proc/show_fluff_message(up,mob/user)
	if(up)
		user.visible_message("[user] climbs up \the [src].","<span class='notice'>You climb up \the [src].</span>")
	else
		user.visible_message("[user] climbs down \the [src].","<span class='notice'>You climb down \the [src].</span>")

/obj/structure/ladder/proc/can_use(mob/user)
	return 1

/obj/structure/ladder/unbreakable/Destroy(force)
	if(force)
		. = ..()
//	else
//		return QDEL_HINT_LETMELIVE

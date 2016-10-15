/obj/structure/sandbag
	name = "sandbag"
	icon_state = "sandbag"
	anchored = 1
	layer = 9

/obj/structure/sandbag/New()
	flags |= ON_BORDER
	set_dir(dir)
	..()

/obj/structure/sandbag/set_dir(direction)
	dir = direction
	if(dir == NORTH)
		layer = FLY_LAYER
	else
		layer = 9

/obj/structure/sandbag/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover, /obj/item/projectile))
		return check_cover(mover, target)
	if(get_dir(loc, target) == dir)
		return 0
	return 1

/obj/structure/sandbag/proc/check_cover(obj/item/projectile/P, turf/from)
	var/turf/cover
	if(cover)
		cover = get_turf(src)
	else
		cover = get_step(loc, get_dir(from, loc))
	if(!cover)
		return 1
	if (get_dist(P.starting, loc) <= 1) //Tables won't help you if people are THIS close
		return 1

	var/chance = 5
	if(ismob(P.original) && get_turf(P.original) == cover)
		var/mob/M = P.original
		if (M.lying)
			chance += 10				//Lying down lets you catch less bullets
		if(get_dir(loc, from) == dir)	//Flipped tables catch mroe bullets
			chance += 5
		else
			return 1					//But only from one side
	if(prob(chance))
		return 0 //blocked
	return 1

/obj/structure/sandbag/bullet_act(obj/item/projectile/P)
	if(!(P.damage_type == BRUTE || P.damage_type == BURN))
		return 0

/obj/structure/sandbag/ex_act(severity)
	switch(severity)
		if(1.0)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			qdel(src)
			return
		if(2.0)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			qdel(src)
			return
		else
	return

/obj/item/weapon/sandbag
	name = "sandbags"
	icon_state = "sandbag"
	w_class = 1
	var/sand_amount = 0

/obj/item/weapon/sandbag/attack_self(mob/user as mob)
	if(sand_amount < 4)
		user << "\red You need more sand to make wall."
		return
	if(!isturf(src.loc))
		user << "\red Haha. Nice try."
		return
	for(var/obj/structure/sandbag/baggy in src.loc)
		if(baggy.dir == user.dir)
			user << "\red There is no more space."
			return

	var/obj/structure/sandbag/bag = new(src.loc)
	bag.set_dir(user.dir)
	user.drop_item()
	qdel(src)

/obj/item/weapon/sandbag/attackby(obj/O as obj, mob/user as mob)
	if(istype(O, /obj/item/weapon/ore/glass))
		if(sand_amount >= 4)
			user << "\red [name] is full!"
			return
		user.drop_item()
		qdel(O)
		sand_amount++
		w_class++
		update_icon()
		user << "You need [4 - sand_amount] more units."

/obj/item/weapon/sandbag/update_icon()
	if(sand_amount >= 4)
		icon_state = "sandbag"
	else
		icon_state = "sandbag_empty"

//obj/item/weapon/ore/glass
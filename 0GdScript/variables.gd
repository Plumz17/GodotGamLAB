@tool
extends EditorScript

func _run() -> void:
	var orcs: int = 200
	var elves: int = 150

	var total_warriors: int = orcs + elves
	var orcs_left: int = orcs - 50
	var elves_lost: int = elves / 4
	var arrows_needed: int = elves * 2

	print("Total warriors:", total_warriors)
	print("Orcs left:", orcs_left)
	print("Elves lost:", elves_lost)
	print("Arrows needed:", arrows_needed)
	# Perlu diingat bahwa pembagian dengan tipe int akan menghasilkan bilangan bulat.
	
	var turns: int = 7
	var party_size: int = 4
	var current_turn: int = turns % party_size

	print("Current turn index:", current_turn)
	
	var boss_hp: int = 0
	var boss_defeated: bool = boss_hp == 0
	print("Boss defeated?", boss_defeated)

	var player_level: int = 12
	var required_level: int = 10
	print("Can enter dungeon?", player_level >= required_level)

	# Floating point values in game physics
	var crit_chance: float = 0.1 + 0.2
	var expected_crit: float = 0.3

	print("Direct comparison:", crit_chance == expected_crit) # BAD
	print("Using is_equal_approx():",
	is_equal_approx(crit_chance, expected_crit))

	var has_master_sword: bool = true
	var has_triforce: bool = false

	var can_fight_ganon: bool = has_master_sword and not has_triforce
	print("Can fight Ganon?", can_fight_ganon)

	var backup_arrived: bool = true      # Party members arrive
	var final_battle: bool = backup_arrived or has_triforce
	print("Final battle starts?", final_battle)

@tool
extends EditorScript

#func _run() -> void:
	#heal_player("Geralt", 20)
	#cast_spell("Kamek")
#
#func heal_player(name: String, amount: int) -> void:
	#print(name, " heals for ", amount, "HP!")
#
#func cast_spell(caster: String) -> void:
	#print(caster, " casts a powerful spell!")

#func _run() -> void:
	#var damage: int = calculate_damage(12, 3)
	#print("Total damage:", damage)
#
#func calculate_damage(attack: int, multiplier: int) -> int:
	#return attack * multiplier
	
func _run() -> void:
	enemy_defeated("Kratos")
	enemy_defeated("Doom Slayer")

func enemy_defeated(hero: String) -> void:
	print(hero, " defeats the enemy!")

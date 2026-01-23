@tool
extends EditorScript

func _run() -> void:
	var player_name: String = "Geralt"
	var level: int = 15
	var hp: int = 320

	var status_text: String = "Witcher %s | Level %d | HP %d" % [player_name, level, hp]
	print(status_text)

	var crit_damage: float = 123.45678
	var damage_text: String = "Critical Hit! Damage: %.2f" % crit_damage
	print(damage_text)

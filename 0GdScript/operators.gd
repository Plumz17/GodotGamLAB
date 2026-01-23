@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var health: int = 100
	var gravity: float = 9.8
	var title: String = "GDScript Foundations"
	var is_game_over: bool = false
	
	print(health)
	print(gravity)
	print(title)
	print(is_game_over)
	
	var level: int = 1
	var player_name: String = "Hero"
	var speed: float = 150.5
	var has_key: bool = false

	print("Level:", level)
	print("Nama Player:", player_name)
	print("Speed:", speed)
	print("Memiliki kunci:", has_key)

extends Node2D
const ENEMY = preload("uid://dcckxudrora3t")

@onready var label: Label = $CanvasLayer/Label
@onready var game_over_label: Label = $CanvasLayer/GameOverLabel
@onready var game_over_sfx: AudioStreamPlayer2D = $GameOverSFX

var _score: int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn_enemy() -> void:
	# Create a new enemy instance from the Enemy scene
	var new_enemy: Enemy = ENEMY.instantiate()
	# Connect enemy_died signal with _on_enemy_died()
	new_enemy.enemy_died.connect(_on_enemy_died)
	# Get the size and position of the game screen (viewport)
	var vpr: Rect2 = get_viewport_rect()
	# Pick a random X position within the screen width
	var new_x: float = randf_range(
		vpr.position.x,  # Left side of the screen
		vpr.end.x        # Right side of the screen
	)
	# Place the enemy at the top of the screen with random X
	new_enemy.position = Vector2(new_x, vpr.position.y)
	# Add the enemy to the current scene so it appears in the game
	get_tree().current_scene.add_child(new_enemy)

func _on_timer_timeout() -> void:
	spawn_enemy()

func _on_enemy_died() -> void:
	_score += 1 # Increase the score by 1
	label.text = str(_score) # Update the score text on the UI

func _on_player_player_died() -> void:
	game_over_label.show() # Show game over label
	game_over_sfx.play() # Play SFX
	get_tree().paused = true # Pause Game

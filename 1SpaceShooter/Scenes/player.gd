extends Area2D
class_name Player
@export var speed: float = 200
@onready var laser_sound: AudioStreamPlayer2D = $LaserSound
const BULLET = preload("uid://cbnvcnxx62qcl")
signal player_died

func _physics_process(delta: float) -> void:
	var vpr = get_viewport_rect() # 0. Get Viewport Rect
	var direction: float = 0  # 1. Start with no movement
	# 2. Check input and update direction
	if Input.is_action_pressed("right"):
		direction = 1
	if Input.is_action_pressed("left"):
		direction = -1
	var movement = direction * speed * delta # 3. Calculate movement
	position.x += movement # 4. Update player position
	# 5. Clamp the player position
	position.x = clampf(position.x, vpr.position.x + 15, vpr.end.x - 15)

func shoot() -> void:
	# Create a new bullet instance
	var new_bullet: Bullet = BULLET.instantiate() 
	# Set bullet position to the player's position
	new_bullet.global_position = global_position 
	# Add the bullet to the current scene
	get_tree().current_scene.add_child(new_bullet) 
	# Play shooting sounds
	laser_sound.play() 

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("shoot"):
		shoot()

func _on_area_entered(area: Area2D) -> void:
	if area is Enemy:
		player_died.emit()

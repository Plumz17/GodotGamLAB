extends Area2D
class_name Bullet

@export var speed: float = 300

func _physics_process(delta: float) -> void:
	position.y -= speed * delta # Move Bullet Upwards

func _on_area_entered(area: Area2D) -> void:
	queue_free()

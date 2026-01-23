extends Area2D
class_name Enemy
@export var speed = 100
signal enemy_died

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position.y += speed * delta

func _on_area_entered(area: Area2D) -> void:
	if area is Bullet:
		enemy_died.emit()
		queue_free()

class_name Ball extends RigidBody2D

signal obstacle_hit(position: Vector2)

func _on_body_entered(body: Node2D):
	if body.is_in_group("obstacle"):
		obstacle_hit.emit(position)
		print("Ow!")

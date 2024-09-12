class_name Ball extends RigidBody2D

signal obstacle_hit(position)

func _on_body_entered(body):
	if body.is_in_group("obstacle"):
		obstacle_hit.emit(position)
		print("Ow!")

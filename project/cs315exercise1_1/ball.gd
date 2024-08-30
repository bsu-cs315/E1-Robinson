extends RigidBody2D

@export var launch_angle = -TAU/4
@export var angle_change_rate = TAU/8

func _process(delta: float) -> void:
	var angle_axis = Input.get_axis("angle_left", "angle_right")
	launch_angle += angle_axis * angle_change_rate * delta
	
	launch_angle = clampf(launch_angle, deg_to_rad(-180), deg_to_rad(0))
	
	if Input.is_action_just_pressed("launch"):
		var impulse = Vector2(1,0) * 500
		apply_impulse(impulse.rotated(launch_angle))

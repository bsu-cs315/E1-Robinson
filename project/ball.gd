extends RigidBody2D

@export var launch_angle = -TAU/4
@export var angle_change_rate = TAU/8

@export var power = 500
@export var power_change_rate = 100

func _process(delta: float) -> void:
	var angle_axis = Input.get_axis("angle_left", "angle_right")
	launch_angle += angle_axis * angle_change_rate * delta
	
	launch_angle = clampf(launch_angle, deg_to_rad(-180), deg_to_rad(0))
	
	var power_axis = Input.get_axis("decrease_power", "increase_power")
	power += power_axis * power_change_rate * delta	
	
	power = clampf(power, 0, 1000)
	
	if Input.is_action_just_pressed("launch"):
		var impulse = Vector2(1,0) * power
		apply_impulse(impulse.rotated(launch_angle))

func _on_body_entered(body):
	if body.is_in_group("obstacle"):
		$"/root/World/CollideLabel".position = self.position
		$"/root/World/CollideLabel".show()
		await get_tree().create_timer(3.0).timeout
		$"/root/World/CollideLabel".hide()
		print("Ow!")

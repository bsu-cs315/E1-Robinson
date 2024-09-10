extends Node2D

func _process(_delta: float) -> void:
	if Input.is_action_pressed("restart"):
		get_tree().reload_current_scene()
		
	$LaunchAngle.text = "Angle: %.d" % rad_to_deg(-1*$Ball.launch_angle)
	$Power.text = "Power: %.d" % $Ball.power

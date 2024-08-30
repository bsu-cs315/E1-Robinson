extends Node2D

func _process(delta: float) -> void:
	if Input.is_action_pressed("restart"):
		get_tree().reload_current_scene()
	
	if Input.is_action_pressed("exit"):
		get_tree().quit()
		
	$LaunchAngle.text = "Angle: %.d" % rad_to_deg(-1*$Ball.launch_angle)

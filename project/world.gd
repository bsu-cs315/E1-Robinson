extends Node2D

@onready var launcher: Node2D = $Launcher

func _process(_delta: float) -> void:
	$LaunchAngle.text = "Angle: %.d" % rad_to_deg(-1*launcher.launch_angle)
	$Power.text = "Power: %.d" % launcher.power
	$AmmoLabel.text = "Ammo: %.d" % launcher.ammo
	
	if launcher.ammo == 0:
		await get_tree().create_timer(5).timeout
		get_tree().change_scene_to_file("res://title_screen.tscn")


func _on_launcher_launched_ball(ball: Ball) -> void:
	ball.obstacle_hit.connect(func (_delta : Vector2):
			$CollideLabel.position = ball.position
			$CollideLabel.show()
			await get_tree().create_timer(3).timeout
			$CollideLabel.hide()
	)
	

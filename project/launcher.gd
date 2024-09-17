extends Node2D

signal launched_ball(ball: Ball)
@export var launch_angle := -TAU/8
@export var angle_change_rate := TAU/8
@export var power := 800.0
@export var power_change_rate := 100
@export var ammo: int = 5
var _launched := false

func _process(delta: float) -> void:
	var angle_axis := Input.get_axis("angle_left", "angle_right")
	launch_angle += angle_axis * angle_change_rate * delta
	global_rotation += angle_axis * angle_change_rate * delta
	
	launch_angle = clampf(launch_angle, deg_to_rad(-180), deg_to_rad(0))
	global_rotation = clampf(launch_angle, deg_to_rad(-180), deg_to_rad(0))
	
	var power_axis := Input.get_axis("decrease_power", "increase_power")
	power += power_axis * power_change_rate * delta
	
	power = clampf(power, 0, 1000)
	
	if Input.is_action_just_pressed("launch") and _launched == false and ammo != 0:
		_launched = true
		ammo -= 1
		var impulse := Vector2(1,0) * power * 1.5
		var ball: Ball = preload("res://ball.tscn").instantiate()
		get_parent().add_child(ball)
		launch_sound()
		ball.global_position = global_position
		ball.apply_impulse(impulse.rotated(launch_angle))
		launched_ball.emit(ball)
		await get_tree().create_timer(3).timeout
		ball.queue_free()
		_launched = false

func launch_sound():
	var audio_stream_player := AudioStreamPlayer.new()
	audio_stream_player.stream = load("res://audio/151714__bowlingballout__pvc-rocket-cannon_2.mp3")
	audio_stream_player.volume_db = linear_to_db(.2)
	get_parent().add_child(audio_stream_player)
	audio_stream_player.play()
	audio_stream_player.finished.connect(func():
		audio_stream_player.queue_free()
	)

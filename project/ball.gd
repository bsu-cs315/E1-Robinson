extends RigidBody2D

func _on_body_entered(body):
	if body.is_in_group("obstacle"):
		$"/root/World/CollideLabel".position = self.position
		$"/root/World/CollideLabel".show()
		await get_tree().create_timer(3).timeout
		$"/root/World/CollideLabel".hide()
		print("Ow!")

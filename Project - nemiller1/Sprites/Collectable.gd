extends Area2D



func _on_Collectable_body_entered(body):
	$AnimationPlayer.play("Bounce")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Bounce":
		queue_free()
		

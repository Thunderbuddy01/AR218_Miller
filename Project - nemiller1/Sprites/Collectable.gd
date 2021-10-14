extends Area2D

signal youre_richer

func _on_Collectable_body_entered(body):
	$AnimationPlayer.play("Bounce")
	Global.score = Global.score + 1
	emit_signal("youre_richer")
	set_collision_layer_bit(3, false)
	set_collision_mask_bit(0, false)

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Bounce":
		queue_free()
	

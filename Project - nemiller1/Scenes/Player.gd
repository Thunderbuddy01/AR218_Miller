extends KinematicBody2D

var velocity := Vector2(0,0)
export var speed := 180
export var jump := -1100
export var energy := 10
export var max_energy = 10
const GRAVITY := 35
signal update_health_bar(energy)

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = speed
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("crouch"):
		$AnimatedSprite.play("crouch")
	else:
		$AnimatedSprite.play("idle")
	#show with "pressed"
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y += jump
		$JumpSound.play()
		
	if not is_on_floor():
		$AnimatedSprite.play("jump")

	velocity.y += GRAVITY

	velocity = move_and_slide(velocity, Vector2.UP)

	velocity.x = lerp(velocity.x, 0,0.1)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Scenes/GameOver.tscn")

func _on_Goal_body_shape_entered(body_id, body, body_shape, local_shape):
	get_tree().change_scene("res://Scenes/WinScreen.tscn")

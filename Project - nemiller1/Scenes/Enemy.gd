extends KinematicBody2D

var velocity = Vector2()
export var speed = 20
const GRAVITY := 35
export var direction = 1

func _ready():
	if direction == -1:
		$AnimatedSprite.flip_h()
		$ground_check.position.x = $ground_checker.position.x *-1
	
func _process(delta):
	if is_on_wall():
		direction = direction * -1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
	velocity.y += GRAVITY
	velocity.x += speed * direction
	velocity = move_and_slide(velocity, Vector2.UP)

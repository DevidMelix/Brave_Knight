extends CharacterBody2D

var motion = Vector2()
var up = Vector2(0, -1)
var speed = 150
var gravity = 10
var jump = 450


func _physics_process(delta):
	
	motion.y += gravity
	
	if Input.is_action_pressed("ui_up") and is_on_floor():
		motion.y = -jump
	

	if Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -speed
	elif Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x = speed
	else:
		motion.x = 0
		
	velocity = motion
	up_direction = up 
	move_and_slide() 
	motion = velocity
	

	pass
	

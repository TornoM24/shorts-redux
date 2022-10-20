extends KinematicBody2D

##################
# Motion Variables
##################
var SPEED = 0.05
var xVelocity = 0
var yVelocity = 0
##################

func approach (param, target, inc):
	if abs (param) != target:
		if param > target:
			param -= inc
		elif param < target:
			param += inc
	if abs(param - target) < inc:
		param = target
	return param

func _ready():
	pass # Replace with function body.

func _process(delta):
	#Ensure that movement is not locked due to dialog or menu status
	if !Manager.movementLocked:
		#Handles horizontal movement inputs
		if Input.is_action_pressed("move_right"):
			xVelocity = SPEED * 5000 * delta
		elif Input.is_action_pressed("move_left"):
			xVelocity = -SPEED * 5000 * delta
		else:
			xVelocity = approach (xVelocity, 0, SPEED * delta * 500)
		#Handles vertical movement inputs
		if Input.is_action_pressed("move_up"):
			yVelocity = -SPEED * 5000 * delta
		elif Input.is_action_pressed("move_down"):
			yVelocity = SPEED * 5000 * delta
		else:
			yVelocity = approach (yVelocity, 0, SPEED * delta * 500)
	move_and_collide(Vector2(xVelocity, yVelocity))

func _physics_process(delta):
	pass

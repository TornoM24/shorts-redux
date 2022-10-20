extends Node2D

onready var body = get_node ("Body")
func _process(delta):
	global_position = body.global_position

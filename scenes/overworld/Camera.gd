extends Camera2D

onready var world = find_parent("World")
onready var player = world.get_node("WorldEnvironment/Player")

func _process(delta):
	global_position = player.global_position

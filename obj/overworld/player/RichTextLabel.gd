extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	text = str(get_parent().xVelocity) + "\n" + str (int(get_parent().global_position.x))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

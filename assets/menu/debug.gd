extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	show()
	visible = false
	pass # Replace with function body.
func _process(delta):
	if Input.is_action_pressed("ctrl"):
		if Input.is_action_pressed("shift"):
			if Input.is_action_just_pressed("d"):
				visible = not visible

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

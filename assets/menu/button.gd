extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var size_max = 3
export var rotate = 1


var pos_incrase_calc = Vector2(0,0)
var i = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	if is_hovered():
		modulate = Color(0.9,0.9,0.9)
	else:
		modulate = Color(1,1,1)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


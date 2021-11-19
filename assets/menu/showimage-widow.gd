extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var image = ImageTexture.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	show()
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_imagefile_file_selected(path):
	show()
	visible = true

extends FileDialog

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	show()
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FileDialog_file_selected(path):
	get_tree().change_scene(path)


func _on_go_pressed():
	show()
	visible = true


func _on_image_pressed():
	pass # Replace with function body.

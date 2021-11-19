extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_imagefile_file_selected(path):
	var texture_src = ImageTexture.new()
	var image = Image.new()
	image.load(path)
	texture_src.create_from_image(image)
	texture = texture_src

extends AnimationPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var open = 0
var opens = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	play("reset")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_play_pressed():
	if open == 0 and not is_playing():
		play("levels-open")
		open = 1
	elif open == 1 and not is_playing():
		play_backwards("levels-open")
		open = 0


func _on_infinite_pressed():
	if not is_playing():
		play("infinite")


func _on_settings_pressed():
	if opens == 0 and not is_playing():
		play("settings")
		opens = 1
	elif opens == 1 and not is_playing():
		play_backwards("settings")
		opens = 0
	


func _on_exit_pressed():
	if opens == 0 and not is_playing():
		play("settings")
		opens = 1
	elif opens == 1 and not is_playing():
		play_backwards("settings")
		opens = 0

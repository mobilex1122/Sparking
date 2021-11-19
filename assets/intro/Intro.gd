extends Node2D


onready var anim = get_node("anim")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var toscene = "res://menu.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	preload("res://assets/intro/out.webm")
	anim.play("intro")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_anim_animation_finished(anim_name):
	get_tree().change_scene(toscene)

extends KinematicBody2D

onready var sprite = get_node("player")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 40
var grid = Vector2(0,0)

var diraction = Vector2()



# snaping code copyed from older project
func snap(x,y):
	for i in range(0,968):
		if position.x > (grid.x+(x/2)) and position.x > (grid.x-(x/2)):
			 grid.x += x
		elif position.x < (grid.x-(x/2)) and position.x < (grid.x+(x/2)):
			 grid.x -= x
		else:
			position.x = grid.x
		
		if position.y > (grid.y+(y/2)) and position.y > (grid.y-(y/2)):
			 grid.y += y
		elif position.y < (grid.y-(y/2)) and position.y < (grid.y+(y/2)):
			 grid.y -= y
		else:
			position.y = grid.y


func _process(delta):
	if Input.is_action_just_pressed("down") and diraction == Vector2(0,0):
		diraction.y = 1
		diraction.x = 0
		sprite.rotation_degrees = 90
	if Input.is_action_just_pressed("up") and diraction == Vector2(0,0):
		diraction.y = -1
		diraction.x = 0
		sprite.rotation_degrees = -90
	if Input.is_action_just_pressed("left") and diraction == Vector2(0,0):
		diraction.x = -1
		diraction.y = 0
		sprite.rotation_degrees = 180
	if Input.is_action_just_pressed("right") and diraction == Vector2(0,0):
		diraction.x = 1
		diraction.y = 0
		sprite.rotation_degrees = 0
	
	if diraction != Vector2(0,0):
		if move_and_collide(diraction * speed):
			diraction = Vector2(0,0)
			snap(32,32)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

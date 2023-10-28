extends CharacterBody2D

signal update

var move_speed = 250
var direction = Vector2()

func _ready():
	pass
	
func _process(_delta):
	emit_signal("update")
	
func _physics_process(delta):
	if direction.length() > 0:
		direction = direction.normalized() * move_speed
		move_and_collide(direction * delta)

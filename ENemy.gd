extends Area2D

export var speed : int = 200
export var moveDist : int = 100

onready var startX : int = position.x
onready var targetX : int = position.x + moveDist 

func _process(delta):
	
	position.x = move_to(position.x, targetX, speed * delta)
	
	if position.x == targetX:
		if targetX == startX:
			targetX = position.x + moveDist
		else:
			targetX = startX

func move_to (current, to, step):
	
	var new = current
	
	if new < to:
		new += step
		if new > to:
			new = to
	else:
		new -= step
		
		if new < to:
			new = to
			
	return new


func _on_ENemy_body_entered(body):
	
	if body.name == "player":
		body.die()

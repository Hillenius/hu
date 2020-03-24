extends Area2D

export var value : int = 1
var rotationspeed : float = 90.0

func _process (delta):
	
	rotation_degrees += rotationspeed * delta


func _on_coin_body_entered(body):
	
	if body.name == "player":
		body.collect_coin(value)
		queue_free()

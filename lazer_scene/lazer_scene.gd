extends Node2D

var vel = 200

func _ready() -> void:
	pass 


func _process(delta):
	translate(Vector2(1, 0) * vel * delta)

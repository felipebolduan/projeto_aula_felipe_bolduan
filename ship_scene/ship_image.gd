extends Sprite2D

var vel = 100
const PRE_LAZER = preload("res://lazer_scene/lazer_scene.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var directionY = (Input.get_axis("ui_up", "ui_down") *2)
	position.y += directionY
	
	var directionX = (Input.get_axis("ui_left", "ui_right") *2)
	position.x += directionX
	
	translate(Vector2(directionX, directionY) * vel * delta)
	
	#global_position.y = clamp(global_position.y, 50, 600)
	
	if Input.is_action_just_pressed("ui_accept"):
		var lazer = PRE_LAZER.instantiate()
		get_parent().add_child(lazer)
		lazer.global_position = global_position + Vector2(-40, -110)


	
	

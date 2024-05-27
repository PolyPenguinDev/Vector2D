extends Area2D
var mousein=false
var go = false
var selected = false
var offset:Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Sprite2D2.visible = selected
	if Input.is_action_just_released("click"):
		go = false
	if Input.is_action_just_pressed("click"):
		selected = false
	if mousein and Input.is_action_just_pressed("click"):
		selected = true
		$"../".selected = true
		$"../../".jselected = true
		visible = selected
		$"../Line2D".visible = selected
		
		go = true
		offset = position-get_global_mouse_position()
	if go:
		position=get_global_mouse_position()+offset
	$"../Line2D".add_point(position)


func _on_mouse_entered():
	mousein = true


func _on_mouse_exited():
	mousein =  false

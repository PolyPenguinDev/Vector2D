extends Node2D
var point1: Vector2
var point2: Vector2
var control1: Vector2
var control2: Vector2
func _cubic_bezier(p0: Vector2, p1: Vector2, p2: Vector2, p3: Vector2, t: float):
	var q0 = p0.lerp(p1, t)
	var q1 = p1.lerp(p2, t)
	var q2 = p2.lerp(p3, t)

	var r0 = q0.lerp(q1, t)
	var r1 = q1.lerp(q2, t)

	var s = r0.lerp(r1, t)
	return s
# Called when the node enters the scene tree for the first time.
func get_at_point(t):
	return _cubic_bezier(point1, control1, point2, control2, t)
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

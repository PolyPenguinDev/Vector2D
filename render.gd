extends Node2D
var selected = false
var jselected = false
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Bezier2D.point1 = $p1.position
	$Bezier2D.point2 = $p2/qq.position + $p2.position
	$Bezier2D.control1 = $p1/qq.position + $p1.position
	$Bezier2D.control2 = $p2.position
	$Line2D.clear_points( )
	$Line2D2.clear_points( )
	$Line2D2.visible = false
	var mp = get_global_mouse_position()
	for i in 101:
		var t = i/100.0
		var p =$Bezier2D.get_at_point(t)
		var di = mp-p
		var dist = di.x**2+di.y**2
		if dist <= 100:
			$Line2D2.visible = true
		$Line2D.add_point(p)
		$Line2D2.add_point(p)
	if Input.is_action_just_pressed("click"):
		selected = $Line2D2.visible
	if jselected:
		jselected = false
		selected = true
	if selected:
		$Line2D2.visible = true
		$p1.visible = true
		$p2.visible = true
		$Line2D2.width = 4
	else:
		$p1.visible = false
		$p2.visible = false
		$Line2D2.width = 2

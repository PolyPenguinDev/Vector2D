shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	COLOR=vec4(0.0, 0.5, 1.0, 0.0);
	COLOR.a = 10.0-sqrt(pow(UV.x-0.5, 2.0)+pow(UV.y-0.5, 2.0))*50.0;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}

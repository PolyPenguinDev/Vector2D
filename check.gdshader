shader_type canvas_item;
uniform float zoom;
uniform vec2 offset;
void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec2 uv = UV/zoom;
	COLOR= vec4(1.0,1.0,1.0,1.0);
	
	COLOR.rgb = vec3(mod(round((uv.x)*50.0)+round((uv.y)*50.0), 2.0))/20.0+0.1;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}

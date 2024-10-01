shader_type canvas_item;

const int pixel_size = 4;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear;
uniform vec2 SCREEN_SIZE = vec2(1024,600);


void fragment() {
	float x = float(int(FRAGCOORD.x) % pixel_size);
	float y = float(int(FRAGCOORD.y) % pixel_size);
	
	x = FRAGCOORD.x + floor(float(pixel_size) / 2.0) - x;
	y = FRAGCOORD.y + floor(float(pixel_size) / 2.0) - y;
	
	COLOR = texture(SCREEN_TEXTURE, vec2(x,y)/ SCREEN_SIZE);
	
}

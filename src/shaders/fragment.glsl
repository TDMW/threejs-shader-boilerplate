varying vec2 vUv;
uniform vec3 u_color;
uniform vec2 u_mouse;
uniform vec2 u_resolution;
uniform float u_time;

// uniform sampler2D uTexture;
// uniform float uTime;


void main() {
  	vec3 color = vec3(u_mouse.x/u_resolution.x, 0.0, u_mouse.y/u_resolution.y);
  
  gl_FragColor = vec4(color, 1.0);
}
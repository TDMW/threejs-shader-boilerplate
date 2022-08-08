#ifdef GL_OES_standard_derivatives
#extension  GL_OES_standard_derivatives : enable
#endif

precision highp float;

varying vec2 vUv;
uniform vec3 u_color;
uniform vec2 u_mouse;
uniform vec2 u_resolution;
uniform float u_time;

// uniform sampler2D uTexture;
float aastep(float threshold, float value) {
  return step(threshold, value);
}


float time(float tt) {
  return tt * 0.1;
}

void main() {
  vec2 uv = (2. * gl_FragCoord.xy - u_resolution.xy) / u_resolution.y;

  uv += 0.1 * sin(uv.yx * 10. + time(u_time) + sin(uv.xy * 7. + 2.1));

  float g = aastep(.35, length(fract(uv * 10.) - .5));
  vec3 color = vec3(g,g,g);

  gl_FragColor = vec4(pow(color, vec3(1. / 1.2)), 1.0);
}
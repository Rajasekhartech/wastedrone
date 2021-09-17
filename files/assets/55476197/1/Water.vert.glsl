attribute vec3 aPosition;

uniform mat4 matrix_model;
uniform mat4 matrix_viewProjection;

uniform float uTime;
attribute vec2 aUv0;

varying vec2 vUv0;



//varying vec3 ScreenPosition;

void main(void)
{
   vUv0 = aUv0;
    vec3 pos = aPosition;
    pos.y +=  cos(pos.z * 1.0 + uTime) * 0.05 * sin(pos.x * 1.0 + uTime);
    
    gl_Position = matrix_viewProjection * matrix_model * vec4(pos, 1.0); 
    
    
   // ScreenPosition = gl_Position.xyz;
    
    
   // gl_Position.x *= 0.5;
}


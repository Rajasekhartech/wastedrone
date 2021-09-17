uniform sampler2D uSurfaceTexture;

uniform float uTime;
varying vec2 vUv0;
//varying vec3 ScreenPosition;

void main(void)
{
    vec4 color = vec4(0.0,0.7,1.0,0.5);
    
    vec2 pos = vUv0;
    // Multiplying by a number greater than 1 causes the 
    // texture to repeat more often 
    pos *= 8.50;
    // Displacing the whole texture so it moves along the surface
    pos.x += uTime * -0.005;
    
 //   color = vec4(vec3(vUv0.x),1.0);
  vec4 WaterLines = texture2D(uSurfaceTexture,pos);
    color.rgba += WaterLines.r;
    
    gl_FragColor = color;
}


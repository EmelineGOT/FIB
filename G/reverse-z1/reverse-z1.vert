#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

void main()
{
    vec3 N = normalize(normalMatrix * normal);
    frontColor = vec4(color,1.0)*-N.z;

    vec4 pos = modelViewProjectionMatrix * vec4(vertex, 1.0);
    gl_Position = vec4(pos.x,pos.y,-pos.z,pos.w);

}
#version 330 core


in vec3 fragNormal;

out vec4 fragColor;
uniform vec4 color;

void main()
{

    fragColor = vec4(1.0,0.0,0.0,1.0);
    //vec4(1.0,0.5,0,1);
            //* normalize(fragNormal).z;
}

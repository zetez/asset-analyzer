#version 150 core

in int time;

in float price;

uniform float x;
uniform float y;
uniform float width;
uniform float height;

uniform int leftTime;
uniform int rightTime;
uniform float highValue;
uniform float lowValue;

uniform float anchor;

void main() {

    int t = time - leftTime;
    int tWidth = rightTime - leftTime;
    float p = (price/anchor) - lowValue;
    float pWidth = highValue - lowValue;

    float xPos = x + (t/float(tWidth))*width;
    float yPos = (1-y)-height + (p/pWidth)*height;

    gl_Position = vec4(2*xPos-1, 2*yPos-1, 0.75f, 1);
}
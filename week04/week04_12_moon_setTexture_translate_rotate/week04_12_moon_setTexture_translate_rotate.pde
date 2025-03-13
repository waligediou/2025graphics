// week04_12_moon_setTexture_translate_rotate
PShape earth;
PImage img;
void setup(){
  size(400,400,P3D);
  moon=createShape(SPHERE,100);
  PImage img=loadImage("moon.jpg");
  earth.setTexture(img);
} 
void draw(){
  background(0);
  translate(width/2,height/2);
  rotateY(radians(frameCount));
  shape(moon);
}  

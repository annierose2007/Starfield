Particle[] parts = new Particle[400];
boolean start = false;
void setup(){
  size(370,400);
  for (int i = 0; i < parts.length; i++){
    parts[i] = new Particle();
    parts[0] = new OddballParticle();
  }
}
void draw() {
  background(185,185,185);
 // spider below
  fill(0);
 //body
  ellipse(185,200,60,85);
  ellipse(185,140,40,40);
 //eyes
  fill(255);
  ellipse(176,130,12,12);
  ellipse(194,130,12,12);
  fill(0);
  ellipse(176,130,3,3);
  ellipse(194,130,3,3);
  strokeWeight(3);
  fill(255);
  ellipse(176,140,12,12);
  ellipse(194,140,12,12);
  fill(0);
  ellipse(176,140,3,3);
  ellipse(194,140,3,3);
  strokeWeight(3);
  // left legs
  line(200,180,120,160);
  line(120,160,100,170);
  line(200,190,120,190);
  line(120,190,100,200);
  line(200,200,120,220);
  line(120,220,100,235);
  line(200,200,120,240);
  line(120,240,110,255);
  // right legs
  line(200,173,240,160);
  line(240,160,260,170);
  line(200,190,250,190);
  line(250,190,270,200);
  line(200,208,250,220);
  line(250,220,270,235);
  line(200,215,250,240);
  line(250,240,260,255);
  fill(0);
  ellipse(186,243,7,5);
  fill(255);  
  for (int i = 0; i < parts.length; i++){
    parts[i].move();
    parts[i].show();
    parts[0].move();
    parts[0].show();
  }
//  rect(mouseX, mouseY, 70, 70);
//  fill(255,255,255);
  //strokeWeight(2);
//  rect(mouseX+35, mouseY+70, 1, 70);
//  line(mouseX, mouseY+10, mouseX+70, mouseY+10);
//  line(mouseX, mouseY+20, mouseX+70, mouseY+20);
 // line(mouseX+10, mouseY, mouseX+10, mouseY+70);
//  line(mouseX+20, mouseY, mouseX+20, mouseY+70);
//  line(mouseX+30, mouseY, mouseX+30, mouseY+70);
 // line(mouseX+40, mouseY, mouseX+40, mouseY+70);
//  line(mouseX+50, mouseY, mouseX+50, mouseY+70);
//  line(mouseX+60, mouseY, mouseX+60, mouseY+70);
//  line(mouseX, mouseY+30, mouseX+70, mouseY+30);
//  line(mouseX, mouseY+40, mouseX+70, mouseY+40);
 // line(mouseX, mouseY+50, mouseX+70, mouseY+50);
 // line(mouseX, mouseY+60, mouseX+70, mouseY+60);
}

class Particle {
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle(){
    myX = 186;
    myY = 243;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*3;
    myColor = color((int)Math.random()*256, (int)Math.random()*256, (int)Math.random()*256);
  }
  void move(){
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
  void show(){
    fill(0);
    ellipse((float) myX,(float) myY, 5, 8);
    ellipse((float) myX,(float) myY-1, 10, 0.1);
    ellipse((float) myX,(float) myY + 3, 10,0.1);
    ellipse((float) myX,(float) myY + 1, 10,0.1);
    ellipse((float) myX,(float) myY -3, 10, 0.1);
  }
}
class OddballParticle extends Particle {
  OddballParticle(){
  }
  void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
  void show() {
    fill(255);
    ellipse((float) myX,(float) myY, 5, 8);
    ellipse((float) myX,(float) myY-1, 8, 0.1);
    ellipse((float) myX,(float) myY + 3, 8,0.1);
    ellipse((float) myX,(float) myY + 1, 8,0.1);
    ellipse((float) myX,(float) myY -3, 8,0.1);
  }
}

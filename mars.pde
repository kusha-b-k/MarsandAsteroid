import shapes3d.utils.*;
import shapes3d.animation.*;
import shapes3d.*;
Ellipsoid earth, moon, stars;
boolean attached = true;
public void setup() 
{
  size(800, 700, P3D);  
  earth = new Ellipsoid(this, 16, 16);
  earth.setTexture("mars.jpg");
  earth.setRadius(150);
  earth.moveTo(new PVector(0, 0, 0));
  earth.strokeWeight(1.0f);
  earth.stroke(color(255, 255, 0));
  earth.moveTo(20, 40, -80);
  earth.tag = "Mars";
  earth.drawMode(Shape3D.TEXTURE);
  moon = new Ellipsoid(this, 15, 15);
  moon.setTexture("astroid.jpg");
  moon.drawMode(Shape3D.TEXTURE);
  moon.setRadius(20);
  moon.moveTo(0, 0, 220);
  moon.tag = "Astroid";
  stars = new Ellipsoid(this, 10, 10);
  stars.setTexture("stars.jpg", 5, 5);
  stars.drawMode(Shape3D.TEXTURE);
  stars.setRadius(500);
  earth.addShape(moon);
}
public void draw() {
  pushStyle();
  earth.rotateBy(0, radians(0.6f), 0);
  moon.rotateBy(radians(0.2f), radians(1.0f), 0);
  stars.rotateBy(0, 0, radians(0.02f));
  background(0);
  pushMatrix();
  camera(0, -190, 350, 0, 0, 0, 0, 1, 0);
  earth.draw();
  stars.draw();
  popMatrix();
  popStyle();
}
PImage texture;

void setup() {
  size(500, 500);
  background(0);
}

void draw(){
  strokeWeight(100);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}

void mousePressed(){
  save("texture.png");
}

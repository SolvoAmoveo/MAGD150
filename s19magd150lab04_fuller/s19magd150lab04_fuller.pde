float x1 = 25; //sun or moon x position
float x2 = 25; //boat x position
float x3 = x2 + 15;
float x4 = x3 + 35;
float x5 = x4 + 15; //right side of boat x pos
float x6 = 57;
float speed = 1; //how fast the sun and moon move
float boatspeed = 2;
int r = 135; //background RGB for day
int g = 206;
int b = 235;
int r1 = r; //storage for current bg color for day/night cycle
int g1 = g;
int b1 = b;
boolean night = false; //is it currently night time?

void setup() {
  size(700, 400);
}

void draw() {
  background(r1, g1, b1);
  stroke(#0077be);
  fill(#0077be);
  strokeWeight(1);
  rect(0, 250, 700, 400);
  
  x1 = x1 + speed;
  x2 = x2 + boatspeed;
  x3 = x3 + boatspeed;
  x4 = x4 + boatspeed;
  x5 = x5 + boatspeed;
  x6 = x6 + boatspeed;
  
  if (x1 > width) {
    night = !night;
    if (night){ //Night sky color
      r1 = r / 6;
      g1 = g / 6;
      b1 = b / 6;
      x1 = 1;
    }else{ //Day sky color
      r1 = r;
      g1 = g;
      b1 = b;
    }
  }
  
  if ((x5 > width) || (x2 < 0.0)) { //No idea why the boat doesn't obey the less than condition after adding the while loop.
    boatspeed = 2;
    boatspeed = boatspeed * -1; //Reverses the boat if it hits a side
  }
  
  noStroke();
  fill(255);
  quad(x2, 300, x3, 315, x4, 315, x5, 300); //Boat parts
  rect(x6, 265, 5, 50);
  triangle(x6+5, 265, x6+20, 290, x6, 290);
  
  if (night){
    ellipseMode(CENTER);
    fill(255);
    ellipse(x1, 40, 30, 30); //Moon
  } else {
    ellipseMode(CENTER);
    fill(#FDB813);
    ellipse(x1, 40, 30, 30); //Sun
  }
  
  if (mousePressed == true) { //Press a key to speed up time!
    speed = 3;
  }else{
    speed = 1;
  }
  
  if (keyPressed == true) { //Press a key to make the boat go faster!
    boatspeed = 5;
  } else {
    if ( boatspeed == 5 ){
    boatspeed = 2;
    }
  }
  
  
int i = 0;
  while(i < 5){
    i++;
    float starx = 0;
    starx = random(700);
    float stary = 0;
    stary = random(250, 400);
    stroke(255);
    strokeWeight(2);
    point(starx, stary);
  }
  
}

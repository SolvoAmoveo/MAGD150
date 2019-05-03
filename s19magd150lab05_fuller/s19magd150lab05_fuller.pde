boolean tvscreen = false; //Determines whether the TV is currently on or off.

int bordercolor = 200; //Color of the stroke between the screen and TV.

int x = 0; //Dimensions for the TV Screen
int y = 0;
int w = 500;
int h = 300;

int x2 = 450; //Dimensions for the button locations
int y2 = 280;
int w2 = 10;
int h2 = 10;


void setup() {
    size (500, 300);
    background(0);
}
/**
Draws the TV screen, TV border, sets the color of the TV screen depending on the
tvscreen boolean, and draws the buttons.
**/
void draw() {
  
    colorMode(GRAY);
    fill(155);
    strokeWeight(10);
    stroke(155);
    rect(x, y, w, h);

    if (tvscreen) {
//      int i = 0;
//      while( i < 20){
//        i = i + 1;
//        colorMode(RGB);
//        fill(random(255), random(255), random(255));
//        rect(random(10-500), 12.5, random(30-50), 300);
//      }
      fill(255); //Should be noFill(); if the above code worked
    } else {
      fill(0);
    }  
  
    strokeWeight(5);
    stroke(bordercolor);
    rect(x+10, y+10, (w-20), (h-40));
    
    colorMode(RGB);
    
    fill(220, 20, 20);
    stroke(220, 20, 20);
    ellipseMode(CORNER);
    ellipse(x2-10, y2, w2+10, h2);
    fill(255);
    text("Off", x2-8, y2+10);
    fill(60, 255, 60);
    stroke(60, 255, 60);
    rect(x2+20, y2, w2+10, h2);
    fill(255);
    text("On", x2+22, y2+10);
}

/**
If the mouse is clicked within the general boundaries of the buttons,
it will change the state of the TV screen.
**/
void mousePressed() {
  if (mouseX > x2-10 && mouseX < (x2-10)+(w2+10) && mouseY > y2 && mouseY < y2+h2) {
    tvscreen = false;
  }
  if (mouseX > x2+20 && mouseX < (x2+20)+(w2+10) && mouseY > y2 && mouseY < y2+h2){
    tvscreen = true;
  }
}

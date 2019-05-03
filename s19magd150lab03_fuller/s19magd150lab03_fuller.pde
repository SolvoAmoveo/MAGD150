float black = 0; //Black color value for the background or any grayscale color
float lineWidth = 5; //Width of the lines drawn
float r; //Red color in RGB
float g; //Green color in RGB
float b; //Blue color in RGB
float x1 = constrain(width, 0, 1024); //Constrain
float y1 = constrain(height, 0, 0);
float x2 = constrain(width, 0, 1024);
float y2 = constrain(height, 768, 768);
float[] maxmin = new float[100]; //max() min() for assignment requirement

// Setting up the screensaver
void setup() {
  y1 = 0;
  y2 = 768;
  size(1024, 768);
  background(black);
  println("Computer idle for too long... screensaver starting up.");
}

//Drawing lines of random color and position along the X axis.
void draw() {
  colorMode(RGB);
  
  x1 = random(1024);
  x2 = x1;
  lineWidth = lineWidth + 5; //Addition
  strokeWeight(lineWidth);
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  line(x1, y1, x2, y2);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  x1 = random(1024);
  x2 = x1;
  lineWidth = lineWidth - 5; //Subtraction
  strokeWeight(lineWidth);
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  line(x1, y1, x2, y2);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  x1 = random(1024);
  x2 = x1;
  lineWidth = lineWidth * 2; //Multiplication
  strokeWeight(lineWidth);
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  line(x1, y1, x2, y2);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  x1 = random(1024);
  x2 = x1;
  lineWidth = lineWidth / 2; //Division
  strokeWeight(lineWidth);
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  line(x1, y1, x2, y2);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

//Resets the image upon a button being pressed and outputs a message.
void keyPressed() {
  if( r > g && r > b){
    println("Last object max red color value: " + max(r, g, b));
  } else if ( g > b && g > r ){
    println("Last object max green color value: " + max(r, g, b));
  } else {
    println("Last object max blue color value: " + max(r, g, b));
  }
  
  if( r < g && r < b){
    println("Last object min red color value: " + min(r, g, b));
  } else if ( g < b && g < r ){
    println("Last object min green color value: " + min(r, g, b));
  } else {
    println("Last object min blue color value: " + min(r, g, b));
  }
  
  fill(r, g, b);
  rect(0, 0, width, height);
  println("Screensaver reset.");
}

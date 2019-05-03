/**
Version: 1.0.0
Creator: Jake Fuller
MAGD 150 - Lab 8 "Text" Assignment

This program will create a semi-interactable motivational poster
and allow the user to save it as a PDF file. 
**/

import processing.pdf.*;
String[] words; //Array of strings that is loaded from a file.
PFont font1; //Font object for the title words
PFont font2; //Font object for the motivational words
int c; //What part of the array is being accessed
int y; //The height of the motivational words.
boolean poster = false; //Says whether the user has clicked the mouse yet or not.

void setup() {
  size(400, 600);
  background(255);
  beginRecord(PDF, "Motivational_Poster.pdf");
  font1 = createFont("Arial", 16);
  font2 = createFont("Georgia", 12);
  words = new String[25];
  words = loadStrings("words.txt");
}

/**
Draws the black poster rectangle in the center,
as well as the title words and the motivational words once the mouse
is clicked. 
**/
void draw () {
  rectMode(CENTER);
  noStroke();
  fill(0);
  rect(width/2, height/2, 300, 450);
  
  noFill();
  stroke(255);
  strokeWeight(24);
  textFont(font1);
  textAlign(CENTER);
  fill(255);
  text("A Positive Vocabulary", width/2, 125);
  text("Leads To A Positive life", width/2, 150);
  
  if(poster){
    textFont(font2);
    fill(255);
    c = 0;
    y = 170;
      for ( c = 0 ; c < words.length; c++ ){
//      For testing purposes only. Uncomment to see the contents of the array.
//      println(words[c]);
        text(words[c], width/2, y);
        y = y + 13;
      }
   }
}

//If a key is pressed, the program will exit and save the PDF.
void keyPressed(){
  endRecord();
  exit();
}

//When the mouse is pressed, the poster will have the words on the file.
void mousePressed(){
  poster = true;
}

/**
Author: Jake Fuller
Version: 1.0.0
Date: 4/17/2019

This program uses the video and sound libraries created by the Processing team
to load a video, sound, and an image file to create a small documentary player.
**/

import processing.video.*;
import processing.sound.*;

PImage image; //Creating a new image using the PImage class
Movie movie; //Creates a new Movie object using the class Movie from the video library
SoundFile music; //Creates a new SoundFile object using the class SoundFile from the sound library

void setup(){
  size(500, 500);
  image = loadImage("desert.jpeg"); //Loads the image in the data path
  movie = new Movie(this, "frog.mp4"); //Loads the video in the data path
  music = new SoundFile(this, "ambient.mp3"); //Loads the music in the data path
  
  image(image, 0, 0, width, height); //Sets the image to take up the whole window
  tint(255, 180, 180, 255); //Tints the image red (R, G, B, A)
  
  music.amp(0.6); //Lowers the volume/amplitude of the music playing in the background
  music.loop(); //Sets the music to play and loop (Could add amplitude to method call)
  
  movie.loop(); //Sets the movie to play and loop
}

void movieEvent(Movie movie) {
  movie.read(); //Reads the current frame of the movie
}

/**
Draws the frame of the movie that's being read, removes any tint that may be used elsewhere
and creates a the frames in a 300x300 resolution in the center of the window.
**/
void draw(){
  noTint();
  image(movie, 100, 100, 300, 300);
}

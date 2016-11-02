//press z for sugar (image and speech) 
//press a for gravity sugar 

import guru.ttslib.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

AudioSample beat3;

TTS tts;

PImage sugar;
PImage sugar1; 
PImage sugar2; 
PImage sugar3;
PImage sugar4;
PImage sugar5; 

float xpos = 200;
float ypos = 50;
float vy = 0;
float gravity = 0.2;

//int pinkClick = 0;
//int blueClick = 0;
//int radius = 30;

void setup(){
  smooth();
  fullScreen();
  background(92, 82, 228);
  tts = new TTS();
  
  minim = new Minim(this);
  
  beat3= minim.loadSample("controller3.wav");
  
  sugar = loadImage("sugar.png");
  sugar.resize(500,500);
  
  sugar1 = loadImage("sugar1.png"); 
  sugar1.resize(100, 100); 
  
  sugar2 = loadImage("sugar2.png"); 
  sugar2.resize(100, 100); 
  
  sugar3 = loadImage("sugar3.png"); 
  sugar3.resize(100, 100); 
  
  sugar4 = loadImage("sugar4.png"); 
  sugar4.resize(100, 100); 
  
  sugar5 = loadImage("sugar5.png"); 
  sugar5.resize(100, 100); 
}
void draw(){

    
  //text( "x: " + mouseX + " y: " + mouseY, mouseX, mouseY );
  
  vy += gravity;
  ypos += vy;
  
  if (keyPressed = true) {
    if (key == 'a'|| key == 'A') {
      background(92, 82, 228);
      image(sugar1, xpos + 500, ypos); 
      image(sugar2, xpos/2 + 500, ypos/2); 
      image(sugar3, xpos/3 + 500, ypos/3); 
    }
  }
}


void keyPressed(){
  
  if (key == 'z'|| key == 'Z') {
    tts.speak("sugar");
    imageMode(CENTER);
    image (sugar, width/2, height/2);
  }
}
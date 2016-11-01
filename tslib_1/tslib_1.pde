// Press a to trigger beat  //<>//
// press z to say egg and have gordons head in the middle 
//press x, c, v for weird stuff to happen 
import guru.ttslib.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

AudioSample beat;

TTS tts;


float speed = 20; 
int diameter = 100;  


float xPos; 
float yPos;

PImage egg;
PImage egg2; 
PImage egg3; 

//int pinkClick = 0;
//int blueClick = 0;
//int radius = 30;

void setup(){
  fullScreen();
  background(92, 82, 228);
  tts = new TTS();
  
  minim = new Minim(this);
  
  beat= minim.loadSample("beat1.wav");
  
  egg = loadImage("egg.png");
  egg.resize(500,500);
  
  egg2 = loadImage("egg2.png");
  egg.resize(300, 300);
  
  egg3 = loadImage("egg3.png");
  egg3.resize(150, 150);
  
  xPos = width / 2; 
  yPos = height / 2; 
}

void draw(){

  xPos += random(-speed, speed); 
  yPos += random(-speed, speed); 
  
  xPos = constrain(xPos, 0, width - diameter*2); 
  yPos = constrain(yPos, 0, height - diameter*2); 
  
  if (keyPressed == true) {
    if(key == 'x' || key == 'X'){
       image(egg2, xPos, yPos); 
    }
    if(key == 'c' || key == 'C'){
      image(egg3, xPos / 2, yPos /2);
    }
  }
  if(key == 'v' || key == 'V'){
    image(egg, xPos * 2, yPos * 2);
    image(egg2, xPos, yPos); 
    image(egg3, xPos / 2, yPos /2);
  }
}


void keyPressed(){
  if (key == 'z'|| key == 'Z') {
    tts.speak("egg");
    imageMode(CENTER);
    image (egg, width/2, height/2);
  }
  
  if (key == 'a'|| key == 'A') {
    beat.trigger();
  }
}

void keyReleased(){
  if (key == 'z'|| key == 'Z'){
    background(92, 82, 228);
  }
}
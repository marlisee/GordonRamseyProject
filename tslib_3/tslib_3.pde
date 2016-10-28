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

//int pinkClick = 0;
//int blueClick = 0;
//int radius = 30;

void setup(){
  fullScreen();
  background(92, 82, 228);
  tts = new TTS();
  
  minim = new Minim(this);
  
  beat3= minim.loadSample("controller3.wav");
  
  sugar = loadImage("sugar.png");
  sugar.resize(500,500);
}

void draw(){
}

void mouseReleased() {
    
}

void keyPressed(){
  
  if (key == 'z'|| key == 'Z') {
    tts.speak("sugar");
    imageMode(CENTER);
    image (sugar, width/2, height/2);
  }
}
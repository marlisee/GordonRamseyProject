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

PImage butter;

//int pinkClick = 0;
//int blueClick = 0;
//int radius = 30;

void setup(){
  fullScreen();
  background(92, 82, 228);
  tts = new TTS();
  
  minim = new Minim(this);
  
  beat= minim.loadSample("beat2.wav");
  
  butter = loadImage("butter.png");
  butter.resize(500,500);
}

void draw(){
}

void mouseReleased() {
    
}

void keyPressed(){
  
  if ( key == 'a'|| key == 'A') {
    tts.speak("");
  }
  
  if (key == 'z'|| key == 'Z') {
    tts.speak("bubububutter");
    imageMode(CENTER);
    image (butter, width/2, height/2);
  }
  
  if (key == 'x'|| key == 'X') {
    beat.trigger();
  }
}
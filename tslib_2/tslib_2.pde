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

PImage [] img;

//int pinkClick = 0;
//int blueClick = 0;
//int radius = 30;

void setup(){
  fullScreen();
  background(92, 82, 228);
  tts = new TTS();
  
  minim = new Minim(this);
  
  beat= minim.loadSample("beat2.wav");
  
  img = new PImage[2];
  img[0] = loadImage("frog_pink.png");
  img[1] = loadImage("frog_blue.png");
}

void draw(){
  image (img[1], 30, -55);
  image (img[0], 80, 10);
}

void mouseReleased() {
    
}

void keyPressed(){
  
  if ( key == 'a'|| key == 'A') {
    tts.speak("");
  }
  
  if (key == 'z'|| key == 'Z') {
    tts.speak("bubububutter");
  }
  
  if (key == 'x'|| key == 'X') {
    beat.trigger();
  }
}
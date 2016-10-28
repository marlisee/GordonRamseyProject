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

PImage dough;

//int pinkClick = 0;
//int blueClick = 0;
//int radius = 30;

void setup(){
  fullScreen();
  background(92, 82, 228);
  tts = new TTS();
  
  minim = new Minim(this);
  
  beat3= minim.loadSample("controller3.wav");
  
  dough = loadImage("dough.png");
}

void draw(){
}

void mouseReleased() {
    
}

void keyPressed(){
  
  if ( key == 'a'|| key == 'A') {
    tts.speak("Hey you bloody idiots. We have a special presentation for you today. We are going to make cake. And I better like it. And it better not be raaaaaaawwwwwwww.");
    delay(750);
    tts.speak("Okay. Let's start with some ingredients.");
  }
  
    
  if (key == 'z'|| key == 'Z') {
    tts.speak("dough");
    imageMode(CENTER);
    image (dough, width/2, height/2);
  }
}
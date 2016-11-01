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

boolean cakeimages = false; 
PImage dough;
PImage cake1; 
PImage cake2; 
PImage cake3; 
PImage chefgordon; 

int xPos = 400; 
int yPos = 1000; 

float angle = 0.0; 
float offset = 400; 
float scalar = 100; 
float speed = 0.07; 

//int pinkClick = 0;
//int blueClick = 0;
//int radius = 30;

void setup(){
  imageMode(CENTER);
  fullScreen();
  background(92, 82, 228);
  tts = new TTS();
  
  minim = new Minim(this);
  
  beat3= minim.loadSample("controller3.wav");
  
  dough = loadImage("dough.png");
  cake1 = loadImage("cake1.png"); 
  cake2 = loadImage ("cake2.png"); 
  cake3 = loadImage ("cake3.png"); 
  chefgordon = loadImage ("chefgordon.png");
  
  cake1.resize(300, 300); 
  cake2.resize(300, 300); 
  cake3.resize(300, 300);
}

void draw(){

    if (keyPressed == true) {
          background(92, 82, 228);
      
      if (!cakeimages) {
        
       if(key == 's' || key == 'S'){  

        float y1 = offset + sin(angle) * scalar; 
        float y2 = offset + sin(angle + 0.5) * scalar; 
        float y3 = offset + sin(angle + 0.8) * scalar; 
        
        image(cake1, 200, y1); 
        image(cake2, width/2, y2); 
        image(cake3, width/2 + width/3, y3); 
        
        angle += speed;
     
        }
      }
      
      if(key == 'a' || key == 'A'){
          image(chefgordon, xPos, yPos); 
          yPos = yPos - 3;
      }
     
    }
  }

void mouseReleased() {
    
}

void keyPressed(){
  
  if ( key == 'd'|| key == 'D') {

    image(chefgordon, xPos, yPos);

  }
 
  if ( key == 'q'|| key == 'Q') {
    tts.speak("Hey you bloody idiots. We have a special presentation for you today. We are going to make cake. And I better like it. And it better not be raaaaaaawwwwwwww.");
    delay(750);
    tts.speak("Okay. Let's start with some ingredients.");
  }
 
  if (key == 'z'|| key == 'Z') {
    tts.speak("dough");
    imageMode(CENTER);
    image (dough, width/2, height/2);
  }
  
    if (key == 'x'|| key == 'X') {
      beat3.trigger();
    }
  
}
import processing.serial.*;

import cc.arduino.*;
import org.firmata.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
BeatDetect beat;
BeatListener bl;
Arduino arduino;
ArrayList balls = new ArrayList();

int l1=10;
int l2=9;
int l3=8;
int l4=7;
int l5=6;
int l6=5;
int l7=4;
int l8=3;
int l9=2;
int r1=11;
int r2=12;
int r3=13;

void setup()
{
  size(512, 200, P3D);
  
  minim = new Minim(this);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  song = minim.loadFile("Demi Lovato - Confident.mp3", 2048);
  song.play();
  
  beat = new BeatDetect(song.bufferSize(), song.sampleRate());
  
  beat.setSensitivity(50);  
  
  bl = new BeatListener(beat, song);  
  textFont(createFont("Helvetica", 16));
  textAlign(CENTER);
  arduino.pinMode(l1,Arduino.OUTPUT);
  arduino.pinMode(l2,Arduino.OUTPUT);
  arduino.pinMode(l3,Arduino.OUTPUT);
  arduino.pinMode(l4,Arduino.OUTPUT);
  arduino.pinMode(l5,Arduino.OUTPUT);
  arduino.pinMode(l6,Arduino.OUTPUT);
  arduino.pinMode(l7,Arduino.OUTPUT);
  arduino.pinMode(l8,Arduino.OUTPUT);
  arduino.pinMode(l9,Arduino.OUTPUT);
  arduino.pinMode(r1,Arduino.OUTPUT);
  arduino.pinMode(r2,Arduino.OUTPUT);
  arduino.pinMode(r3,Arduino.OUTPUT);
}

void draw()
{
   
  background(0);
  fill(255);
  if( beat.isRange( 21, 23, 2 ) )
  {
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(100);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(100);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(100);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.LOW);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.LOW);
     delay(50);
  }
  if(beat.isRange(18, 20, 2))
   {
     arduino.digitalWrite(l1,Arduino.HIGH);
     arduino.digitalWrite(l2,Arduino.HIGH);
     arduino.digitalWrite(l3,Arduino.HIGH);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.HIGH);
     arduino.digitalWrite(l8,Arduino.HIGH);
     arduino.digitalWrite(l9,Arduino.HIGH);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(100);
     arduino.digitalWrite(r3,Arduino.LOW);
     delay(50);
   }
   if(beat.isRange(24, 26, 2))
   {
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.LOW);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.LOW);
   }
   if(beat.isRange(15, 17, 2))
   {
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(50);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(150);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(150);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.LOW);
     delay(150);
   }
   if(beat.isRange(12, 14, 2))
   {
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.HIGH);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.LOW);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(150);
     arduino.digitalWrite(l1,Arduino.HIGH);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.HIGH);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(150);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.LOW);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.HIGH);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.HIGH);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(150);
   }
   if(beat.isRange(9, 11, 2))
   {
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.HIGH);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.HIGH);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(50);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.HIGH);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.HIGH);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(150);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(150);
     arduino.digitalWrite(l1,Arduino.LOW);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.LOW);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.LOW);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.LOW);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.LOW);
     delay(150);
   }
   if(beat.isRange(4, 6, 2))
   {
     arduino.digitalWrite(l1,Arduino.HIGH);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.HIGH);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.LOW);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.HIGH);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.HIGH);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.LOW);
     delay(150);
     arduino.digitalWrite(l1,Arduino.HIGH);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.HIGH);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.LOW);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.HIGH);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.HIGH);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.LOW);
     delay(150);
     arduino.digitalWrite(l1,Arduino.HIGH);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.HIGH);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.LOW);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.HIGH);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.HIGH);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(150);
     arduino.digitalWrite(l1,Arduino.HIGH);
     arduino.digitalWrite(l2,Arduino.LOW);
     arduino.digitalWrite(l3,Arduino.HIGH);
     arduino.digitalWrite(l4,Arduino.LOW);
     arduino.digitalWrite(l5,Arduino.LOW);
     arduino.digitalWrite(l6,Arduino.LOW);
     arduino.digitalWrite(l7,Arduino.HIGH);
     arduino.digitalWrite(l8,Arduino.LOW);
     arduino.digitalWrite(l9,Arduino.HIGH);
     arduino.digitalWrite(r1,Arduino.LOW);
     arduino.digitalWrite(r2,Arduino.LOW);
     arduino.digitalWrite(r3,Arduino.LOW);
     delay(100);
   }
   if(beat.isRange(0, 3, 2))
   {
     arduino.digitalWrite(l1,Arduino.HIGH);
     arduino.digitalWrite(l2,Arduino.HIGH);
     arduino.digitalWrite(l3,Arduino.HIGH);
     arduino.digitalWrite(l4,Arduino.HIGH);
     arduino.digitalWrite(l5,Arduino.HIGH);
     arduino.digitalWrite(l6,Arduino.HIGH);
     arduino.digitalWrite(l7,Arduino.HIGH);
     arduino.digitalWrite(l8,Arduino.HIGH);
     arduino.digitalWrite(l9,Arduino.HIGH);
     arduino.digitalWrite(r1,Arduino.HIGH);
     arduino.digitalWrite(r2,Arduino.HIGH);
     arduino.digitalWrite(r3,Arduino.HIGH);
     delay(50);
   }
}
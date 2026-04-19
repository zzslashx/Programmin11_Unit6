//Cheng Cheng
//Block 1-1
//April 15,2026

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;




//MODE VARIABLES--------------------------------------------------------------------------------
int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;

//TARGET VARIABLES---------------------------------------------------------------------------
float x, y, d;
int score, lives;
float popupX, popupY, popupValue, popupTimer;
float sliderX, size;
//COLOR PALLETTE-------------------------------------------------------------------------
//Colors
//essential primaries
color warmYellow  = #FFDF00;
color coolYellow  = #F1FF5E;
color white       = #F9F6F0;
color cyan        = #00FFFF;
color warmBlue    = #180A8F;
color coolBlue    = #0055A4;
color pink        = #FF69B4;
//Earth Tones
color brightRed   = #FF0000;
color brightOrange= #FF5F1F;
color warmGreen   = #7BB661;
color coolGreen   = #00A86B;
//black
color ivoryBlack  = #000000;
//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;


void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  mode = INTRO;

  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  score =0;
  lives=3;
  sliderX=40;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
    drawPopup();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }else if(mode == OPTIONS){
  options();
  } 
  else {
    println("Error: Mode = " + mode);
  }
}

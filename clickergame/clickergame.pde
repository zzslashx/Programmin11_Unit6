//Cheng Cheng
//Block 1-1
//April 15,2026

//MODE VARIABLES--------------------------------------------------------------------------------
int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

//TARGET VARIABLES---------------------------------------------------------------------------
float x,y,d;
float vx,vy; //target velocities 
int score, lives;
//COLOR PALLETTE-------------------------------------------------------------------------


void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  mode = INTRO;
  
  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx=random(-2,2);
  vy=random(-2,2);
  score =0;
  lives=3;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}

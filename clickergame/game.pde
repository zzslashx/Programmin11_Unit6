void game(){
background(0,255,0);

//display target
fill(255);
stroke(0);
strokeWeight(5);
circle(x,y,d);

//moving
x+=vx;
y+=vy;

//bouncing
if(x<d/2 || x>width-d/2) vx=-vx;
if(y<d/2||y>height-d/2) vy=-vy;
}
void gameClicks(){
mode=GAMEOVER;

}
//Brace highlights when you select it

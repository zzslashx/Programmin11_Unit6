void game() {
  background(0, 255, 0);

  //score + lives
  text("Score: " + score, 100, 100);
  text("Lives: " + lives, 100, 150);

  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);

  //moving
  x+=vx;
  y+=vy;

  //bouncing
  if (x<d/2 || x>width-d/2) vx=-vx;
  if (y<d/2||y>height-d/2) vy=-vy;
}
void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score++;
    coin.rewind();
    coin.play();
  } else {
    lives--;
    bump.rewind();
    bump.play();
  }
  if (lives==0) mode=GAMEOVER;
}

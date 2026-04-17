void game() {

  //visuals
  background(0, 255, 0);
  //pause button
  stroke(0);
  fill(255);
  circle(width-100, 100, 90);
  //2 lines signalling its pause button
  if (mode==GAME) {
    strokeWeight(8);
    line(width-110, 90, width-110, 110);
    line(width-85, 90, width-85, 110);
  }
  if (mode==PAUSE) {
    fill(0);
    triangle(width-115, 70, width-115, 130, width-70, 100);
  }

  //score + lives
  textSize(25);
  text("Score: " + score, 100, 100);
  text("Lives: " + lives, 100, 150);

  displayTarget();
}
void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/8) { // bullseye
    score += 3;
    coin.rewind();
    coin.play();
    x = random(d/2, width-d/2);
    y = random(d/2, height-d/2);
  } else if (dist(mouseX, mouseY, x, y) < d/4) { // inner ring
    score += 2;
    coin.rewind();
    coin.play();
    x = random(d/2, width-d/2);
    y = random(d/2, height-d/2);
  } else if (dist(mouseX, mouseY, x, y) < d/2) { // outer ring
    score += 1;
    coin.rewind();
    coin.play();
    x = random(d/2, width-d/2);
    y = random(d/2, height-d/2);
  } else if (dist(width-100, 100, mouseX, mouseY) < 45) { // pause button
    mode = PAUSE;
  } else { // miss
    lives--;
    bump.rewind();
    bump.play();
  }
  if (lives == 0) mode = GAMEOVER;
}
void displayTarget() {

  // outermost ring
  stroke(0);
  strokeWeight(3);
  fill(255, 255, 255);
  circle(x, y, d);
  noStroke();
  // second ring
  fill(255, 0, 0);
  circle(x, y, d * 0.75);
  // third ring
  fill(255, 255, 255);
  circle(x, y, d * 0.5);
  // bullseye
  fill(255, 0, 0);
  circle(x, y, d * 0.25);
}

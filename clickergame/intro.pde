void intro() {
  background(0,255,255);
  //Title
  textSize(75);
  text("Clicker Game", width/2, height/2-height/4);
  //Start button
  fill(255);
  stroke(0);
  strokeWeight(5);
  rect(width/2,height/2+height/4,300,100);
  fill(0);
  textSize(50);
  text("start", width/2, height/2+height/4);
}
void introClicks() {
  if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > height/2 + height/4 - 50 && mouseY < height/2 + height/4 + 50) {
  vx=random(-2,2);
  vy=random(-2,2);
  mode = GAME;
  }
}

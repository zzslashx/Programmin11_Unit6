void options() {
  //background + text
  drawGradientRect(width/2, height/2, width, height, warmYellow, coolYellow);
  textSize(85);
  text("OPTIONS", width/2, 100);
  textSize(25);
  //indicator
  x=150;
  y=(height/2)+200;
  displayTarget();
  //slider
  fill(0);
  text("Size of target", 100, height/2);
  controlSlider();
  if ( mouseX > 40 && mouseX < 165 && mouseY > height/2 + 15 && mouseY < height/2 + 45) {
    stroke(255);
  } else {
    stroke(0);
  }
  fill(0);
  strokeWeight(5);
  line(40, (height/2)+30, 165, (height/2)+30);
  circle(sliderX, (height/2)+30, 15);
}

void optionsClicks() {
if (mousePressed && mouseX > 40 && mouseX < 165 && mouseY > height/2 + 15 && mouseY < height/2 + 45) {
    controlSlider();
  } else mode = INTRO;
}

void controlSlider() {
  if (mousePressed && mouseX > 40 && mouseX < 165 && mouseY > height/2 + 15 && mouseY < height/2 + 45) {
    sliderX = mouseX;
  } else {
    stroke(0);
  }
  d = map(sliderX, 40, 165, 50, 255);
}

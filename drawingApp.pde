int r, g, b;
float mouseX2, mouseY2;

void setup() {
  size(800, 800);
  background(155);
  smooth();
}

void draw() {
  UI();
  buttonPress();
  drawLine();
  currentColor();
  println(mouseX, mouseY);
}

void UI() {
  stroke(0);
  fill(255);
  //Column 1 (Black, LRed, LGreen, Blue, Pink, Yellow)
  fill(0);
  rect(width/20, height/20+2*37.5, 37.5, 37.5);
  fill(255, 0, 0);
  rect(width/20, height/20+3*37.5, 37.5, 37.5);
  fill(0, 255, 0);
  rect(width/20, height/20+4*37.5, 37.5, 37.5);
  fill(0, 0, 255);
  rect(width/20, height/20+5*37.5, 37.5, 37.5);
  fill(255, 0, 255);
  rect(width/20, height/20+6*37.5, 37.5, 37.5);
  fill(255, 255, 0);
  rect(width/20, height/20+7*37.5, 37.5, 37.5);

  //Column 2 (White, Red, Green, LBlue, Purple, Gray)
  fill(255);
  rect(width/20+37.5, height/20+2*37.5, 37.5, 37.5);
  fill(180, 0, 0);
  rect(width/20+37.5, height/20+3*37.5, 37.5, 37.5);
  fill(0, 150, 0);
  rect(width/20+37.5, height/20+4*37.5, 37.5, 37.5);
  fill(0, 255, 255);
  rect(width/20+37.5, height/20+5*37.5, 37.5, 37.5);
  fill(153, 0, 153);
  rect(width/20+37.5, height/20+6*37.5, 37.5, 37.5);
  fill(128, 128, 128);
  rect(width/20+37.5, height/20+7*37.5, 37.5, 37.5);
}

void buttonPress() {
  //Column 1
  //Black button
  if (mouseX > width/20 && mouseX < width/20+37.5 && mouseY > height/20+2*37.5 && mouseY < height/20+3*37.5) {
    if (mousePressed) {
      r = 0;
      g = 0;
      b = 0;
    }
    println("Black");
  }

  //LRed button
  if (mouseX > width/20 && mouseX < width/20+37.5 && mouseY > height/20+3*37.5 && mouseY < height/20+4*37.5) {
    if (mousePressed) {
      r = 255;
      g = 0;
      b = 0;
    }
    println("LRed");
  }

  //LGreen button
  if (mouseX > width/20 && mouseX < width/20+37.5 && mouseY > height/20+4*37.5 && mouseY < height/20+5*37.5) {
    if (mousePressed) {
      r = 0;
      g = 255;
      b = 0;
    }
    println("LGreen");
  }

  //Blue button
  if (mouseX > width/20 && mouseX < width/20+37.5 && mouseY > height/20+5*37.5 && mouseY < height/20+6*37.5) {
    if (mousePressed) {
      r = 0;
      g = 0;
      b = 255;
    }
    println("Blue");
  }

  //Pink button
  if (mouseX > width/20 && mouseX < width/20+37.5 && mouseY > height/20+6*37.5 && mouseY < height/20+7*37.5) {
    if (mousePressed) {
      r = 255;
      g = 0;
      b = 255;
    }
    println("Pink");
  }

  //Yellow button
  if (mouseX > width/20 && mouseX < width/20+37.5 && mouseY > height/20+7*37.5 && mouseY < height/20+8*37.5) {
    if (mousePressed) {
      r = 255;
      g = 255;
      b = 0;
    }
    println("Yellow");
  }

  //Column 2
  //White button
  if (mouseX > width/20+37.5 && mouseX < width/20+2*37.5 && mouseY > height/20+2*37.5 && mouseY < height/20+3*37.5) {
    if (mousePressed) {
      r = 255;
      g = 255;
      b = 255;
    }
    println("White");
  }

  //Red button
  if (mouseX > width/20+37.5 && mouseX < width/20+2*37.5 && mouseY > height/20+3*37.5 && mouseY < height/20+4*37.5) {
    if (mousePressed) {
      r = 180;
      g = 0;
      b = 0;
    }
    println("Red");
  }

  //Green button
  if (mouseX > width/20+37.5 && mouseX < width/20+2*37.5 && mouseY > height/20+4*37.5 && mouseY < height/20+5*37.5) {
    if (mousePressed) {
      r = 0;
      g = 150;
      b = 0;
    }
    println("Green");
  }

  //LBlue button
  if (mouseX > width/20+37.5 && mouseX < width/20+2*37.5 && mouseY > height/20+5*37.5 && mouseY < height/20+6*37.5) {
    if (mousePressed) {
      r = 0;
      g = 255;
      b = 255;
    }
    println("LBlue");
  }

  //Purple button
  if (mouseX > width/20+37.5 && mouseX < width/20+2*37.5 && mouseY > height/20+6*37.5 && mouseY < height/20+7*37.5) {
    if (mousePressed) {
      r = 153;
      g = 0;
      b = 153;
    }
    println("Purple");
  }

  //Gray button
  if (mouseX > width/20+37.5 && mouseX < width/20+2*37.5 && mouseY > height/20+7*37.5 && mouseY < height/20+8*37.5) {
    if (mousePressed) {
      r = 128;
      g = 128;
      b = 128;
    }
    println("Gray");
  }
}

void drawLine() {
  if (mouseX > 150) {
    if (mousePressed) {
      if (mousePressed) {
        stroke(r, g, b);
        line(mouseX, mouseY, mouseX2, mouseY2);
      }
    }
    mouseX2 = mouseX;
    mouseY2 = mouseY;
  }
}

void currentColor() {
  fill(r, g, b);
  ellipse(50, 50, 65, 65);
}

void colors() {
}

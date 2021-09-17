//By ToxicSamurai
//Licensed under Creative Commons CC-BY-NC-SA

//Vars for stroke color
int r = 0, g = 0, b = 0;

//Var for the  strokeWeight
int weight = 1;

//Vars for drawing lines second location ordered pair
float mouseX2, mouseY2;

void setup() {
  size(800, 800);
  background(155);
  //Smooths the edges of shapes with 4x anti-aliasing
  smooth(4);
}

void draw() {
  //Function list
  buttonPress();
  UI();
  drawLine();
  currentColor();
  
  //Debug printing
  println(mouseX, mouseY);
}

//Function for the function of the buttons that are made in the UI function
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

  //strokeWeight buttons
  //Small
  if (mouseX > width/20 && mouseX < width/20+75 && mouseY > height/2 && mouseY < height/2+75) {
    if(mousePressed){
     weight = 1;
    }
  }

  //Medium
  if (mouseX > width/20 && mouseX < width/20+75 && mouseY > height/2+75 && mouseY < height/2+2*75) {
    if(mousePressed){
      weight = 5;
    }
  }

  //Large
  if (mouseX > width/20 && mouseX < width/20+75 && mouseY > height/2+2*75 && mouseY < height/2+3*75) {
    if(mousePressed){
      weight = 10;
    }
  }

  //Clear button
  if (mouseX > width/20 && mouseX < width/20+75 && mouseY > height/2+3*75+50 && mouseY < height/2+4*75+50){
    if(mousePressed){
      background(155);
    }
  }
}

//Function for all the buttons but not they're function
void UI() {
  //Resets stroke and strokeWeight for the UI
  stroke(0);
  strokeWeight(1);

  //Column 1 (Black, LRed, LGreen, Blue, Pink, Yellow)
  //Black
  fill(0);
  rect(width/20, height/20+2*37.5, 37.5, 37.5);
  //LRed
  fill(255, 0, 0);
  rect(width/20, height/20+3*37.5, 37.5, 37.5);
  //LGreen
  fill(0, 255, 0);
  rect(width/20, height/20+4*37.5, 37.5, 37.5);
  //Blue
  fill(0, 0, 255);
  rect(width/20, height/20+5*37.5, 37.5, 37.5);
  //Pink
  fill(255, 0, 255);
  rect(width/20, height/20+6*37.5, 37.5, 37.5);
  //Yellow
  fill(255, 255, 0);
  rect(width/20, height/20+7*37.5, 37.5, 37.5);

  //Column 2 (White, Red, Green, LBlue, Purple, Gray)
  //White
  fill(255);
  rect(width/20+37.5, height/20+2*37.5, 37.5, 37.5);
  //Red
  fill(180, 0, 0);
  rect(width/20+37.5, height/20+3*37.5, 37.5, 37.5);
  //Green
  fill(0, 150, 0);
  rect(width/20+37.5, height/20+4*37.5, 37.5, 37.5);
  //LBlue
  fill(0, 255, 255);
  rect(width/20+37.5, height/20+5*37.5, 37.5, 37.5);
  //Purple
  fill(153, 0, 153);
  rect(width/20+37.5, height/20+6*37.5, 37.5, 37.5);
  //Gray
  fill(128, 128, 128);
  rect(width/20+37.5, height/20+7*37.5, 37.5, 37.5);

  //strokeWeight buttons
  fill(255);
  //Small
  rect(width/20, height/2, 75, 75);
  stroke(r, g, b);
  line(width/20+12.5, height/2+37.5, width/20+62.5, height/2+37.5);
  //Medium
  stroke(0);
  rect(width/20, height/2+75, 75, 75);
  fill(r, g, b);
  rect(width/20+12.5, height/2+75+37.5, 50, 5, 90);
  //Large
  fill(255);
  rect(width/20, height/2+2*75, 75, 75);
  fill(r, g, b);
  rect(width/20+12.5, height/2+75+3*35.5, 50, 10, 90);

  //Clear button
  fill(255);
  rect(width/20, height/2+3*75+50, 75, 75);
  fill(0);
  textSize(24);
  text("Clear", width/20+8, height/2+3*75+50+45);
}

//Function for drawing the line
void drawLine() {
  if (mouseX > 150) {
    if (mousePressed) {
      if (mousePressed) {
        stroke(r, g, b);
        strokeWeight(weight);
        line(mouseX, mouseY, mouseX2, mouseY2);
      }
    }
    mouseX2 = mouseX;
    mouseY2 = mouseY;
  }
}

//Function for the circle that shows the current stroke color and strokeWeight
void currentColor() {
  stroke(0);
  strokeWeight(weight);
  fill(r, g, b);
  ellipse(50, 50, 65, 65);
}

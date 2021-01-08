// Global Variables
int button2X, button2Y, button2Width, button2Height;
color ink, black=#000000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
Boolean draw=false;
//Boolean imageSOn=false, imageOn=false;
color white= #FFFFFF;
color redC= #ED0C0C;
color greenC= #0CED51;
color blueC= #1A0CED;
color yellow= #F4F750;
color orange= #F28B2A;
color violet= #DD57F0;
color blueGreen= #57F0AC;
color yellowGreen= #DDF057;
color pink= #FF95F8;
color yellowOrange= #F7C870;
color buttonColour;
color button2Colour, JadeGreen = #32F78F;
float buttonX;
float buttonY;
float masterStroke= 1;
PImage pic, pic2;
float imageX, imageY, imageWidth, imageHeight;
float image2X, image2Y, image2Width, image2Height;
int button3X, button3Y, button3Width, button3Height;

void setup() {
  size(600, 500);
  background(255);
  //fill(redC );
  button3X = width*19/20;
  button3Y = height*1/18;
  button3Width = width*1/18;
  button3Height = height*1/18;

  button2X = width*19/20;
  button2Y = height*1/9;
  button2Width = width*1/18;
  button2Height = height*1/18;
  //fill(white);
  pic = loadImage("AngryBird.gif");
  pic2 = loadImage("SpiderMan.jpg");

  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);

  imageX = width*0;
  imageY = height*0;
  imageWidth = width*1;
  imageHeight = height*1;

  image2X = width*0;
  image2Y = height*0;
  image2Width = width*1;
  image2Height = height*1;

  //EraseButtonSetup();
  quitButtonSetup();
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*1;
  drawingSurfaceHeight = height*1;
  //
  ink = black; 
  //
}



void draw() {
  quitButtonDraw();
  //EraseButtonDraw();
  if (mouseX>button2X && mouseX<button2X+button2Width && mouseY>button2Y && mouseY<button2Y+button2Height) {
    buttonColour = yellow;
  } else {
    buttonColour = redC;
  } // End If

  buttonColour = purple;
  fill(buttonColour);
  rect(button2X, button2Y, button2Width, button2Height);
  fill(white);

  button2Colour = JadeGreen;
  fill(button2Colour);
  rect(button3X, button3Y, button3Width, button3Height);
  fill(white);

  //if (imageSOn == true && imageOn == false) image(pic, image2X, image2Y, image2Width, image2Height);
  //if (imageSOn == false && imageOn == true) image(pic, imageX, imageY, imageWidth, imageHeight);

  if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
    fill(ink);
    fill(redC );
    rect(10, 10, 25, 25 );
    fill(blueC );
    rect(35, 10, 25, 25 );
    fill(greenC);
    rect(10, 35, 25, 25);
    fill(yellow);
    rect(35, 35, 25, 25);
    fill(orange);
    rect(10, 60, 25, 25);
    fill(violet);
    rect(35, 60, 25, 25);
    fill(blueGreen);
    rect(10, 85, 25, 25);
    fill(yellowGreen);
    rect(35, 85, 25, 25);
    fill(pink);
    rect(10, 110, 25, 25);
    fill(yellowOrange);
    rect(35, 110, 25, 25);
    fill(white);
    rect(10, 135, 25, 25);
    fill(black);
    rect(35, 135, 25, 25);
    line(450, 30, 500, 30);
    strokeWeight(4);
    line(450, 50, 500, 50);
    strokeWeight(8);
    line(450, 80, 500, 80);
    strokeWeight(1);
    fill(255);
    rect(250, 10, 50, 50);
    if (mousePressed) {
      if (mouseX > 10 && mouseX < 35) {
        if (mouseY >10 && mouseY < 35) {
          stroke(redC);
        }
        if (mouseY>35 && mouseY < 60) {
          stroke(greenC);
        }
        if (mouseY>60 && mouseY<85) {
          stroke(orange);
        }
        if (mouseY>85 && mouseY<110) {
          stroke(blueGreen);
        }
        if (mouseY>110 && mouseY<135) {
          stroke(pink);
        }
        if (mouseY>135 && mouseY<160) {
          stroke(white);
        }
      }
      if (mouseX > 35 && mouseX < 60) {
        if ( mouseY > 10 && mouseY <35) {
          stroke(blueC);
        }
        if (mouseY > 35 && mouseY < 50) {
          stroke(yellow);
        }
        if (mouseY > 60 && mouseY < 85) {
          stroke(violet);
        }
        if (mouseY >85 && mouseY < 110) {
          stroke(yellowGreen);
        }
        if (mouseY > 110 && mouseY <135) {
          stroke(yellowOrange);
        }
        if (mouseY >135 && mouseY <160) {
          stroke(black);
        }
      }
      if (mousePressed) {
        if (mouseX > 450 && mouseX <500) {
          if (mouseY >10 && mouseY <40) {
            masterStroke= 1;
          }
        }
        if (mouseX > 450 && mouseX <500) {
          if (mouseY >40 && mouseY <70) {
            masterStroke= 4;
          }
        }
        if (mouseX > 450 && mouseX <500) {
          if (mouseY > 70 && mouseY <100) {
            masterStroke= 7;
          }
        }
        strokeWeight(masterStroke);
      }
      if (mousePressed) {
        if (mouseX > 250 && mouseX <300) {
          if (mouseY > 10 && mouseY <60) {
            background(255);
          }
        }
      }
      if (mousePressed) {
        line(mouseX, mouseY, buttonX, buttonY);
      }
    }
    buttonX=mouseX;
    buttonY=mouseY;
  }
}

void mousePressed() {
  //EraseButtonMouseClicked();
  if (mouseX>button2X && mouseX<button2X+button2Width && mouseY>button2Y && mouseY<button2Y+button2Height)  image(pic, imageX, imageY, imageWidth, imageHeight);
  if (mouseX>buttonX && mouseX<button3X+button3Width && mouseY>button3Y && mouseY<button3Y+button3Height) image(pic2, image2X, image2Y, image2Width, image2Height);

  quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
}

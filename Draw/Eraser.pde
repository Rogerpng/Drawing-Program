//Global Variables
String EraseTitle = "Eraser";
PFont EraseButtonFont;
color Red = #EA112E; //Ink
color BlueEraseButton = #6311EA;
color PinkEraseButton = #FC7DBB;
color eraser = #FFFFFF;
float EraseButtonRect;
void EraseButtonRect() {
  rect(width*5/6, height*1/2, width*1/10, height*1/10);
}

void EraseButtonSetup() {
  EraseButtonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  EraseButtonRect(); //Erase Button
}

void EraseButtonDraw() {
  //HoverOver
  if (mouseX >= width*5/6  && mouseX <= width && mouseY >= height*1/2 && mouseY <= height*1/10) {
    fill(BlueEraseButton);
    EraseButtonRect();
  } else {
    fill(PinkEraseButton);
    EraseButtonRect();
  }

  //Text in Quit Button
  fill(Red); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(EraseButtonFont, 14); //Change the number until it fits, largest font size
  text(EraseTitle, width*5/6, height*1/2, width*1/10, height*1/10);
  fill(255); //Reset to white for rest of the program
}

void EraseButtonMouseClicked() {
  if (mousePressed == true) {
    println("EraserClicked");
  }
}//End EraseButtonMouseClicked

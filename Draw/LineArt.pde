//Global Variables
String word = "LineArt";
PFont lineButtonFont;
color lineArtGray = #8E8E8E;
color lineNavyBlue = #64AEDB;
color lineLightBlue = #97D5FA;

void lineArtRect() {
  rect(width*7/8, height*8/9, width*3/4, height*4/5);
}//End of LineArtRect

void LineButtonSetup() {
  lineButtonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  lineArtRect();
}

void lineButtonDraw() {
  //HoverOver
  if (mouseX >= width*7/8  && mouseX <= width && mouseY >= height*8/9 && mouseY <= height*4/5) {
    fill(lineNavyBlue);
    lineArtRect();
  } else {
    fill(lineLightBlue);
    lineArtRect();
  }
  fill(lineArtGray); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(lineButtonFont, 15); //Change the number until it fits, largest font size
  text(word, width*7/8, height*8/9, width*45, height*4/5);
}

//Global Variables
int appWidth, appHeight;
float xImage, yImage, widthImage, heightImage;
PImage picBackground;
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight;
  size(2000, 2000);
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  xImage = appWidth*0;
  yImage = appHeight*0;
  widthImage = appWidth-1;
  heightImage = appHeight-1;
  picBackground = loadImage("../Images used for the Celebration Card/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
  //
  rect(xImage, yImage, widthImage, heightImage);
  //
} //End setup
//
void draw() {
  image(picBackground, xImage, yImage, widthImage, heightImage);
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program

//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
Boolean nightmode=false;
Boolean brightnesscontrol=false; //<- ->
int brightnessNumber=255; //Range 1-255
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight;
  size(2000, 2000);
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../Images used for the Celebration Card/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
  //
  //rect(xImage, yImage, widthImage, heightImage);
  //
} //End setup
//
void draw() {
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  if (brightnesscontrol==true) tint (255, brightnessNumber);
  //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint
  if (nightmode==true) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } else {
    noTint();
    println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End draw
//
void keyPressed() {
  //
  if ( key=='n' || key=='N' ) {
    if ( nightmode==true ) { 
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness controlled with arrow keys
  //
  if ( [Special Key Binds] ) { //Brightness keybinds
  brightnessControl = true;
  }
  //
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program

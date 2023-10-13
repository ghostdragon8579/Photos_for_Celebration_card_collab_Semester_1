//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float ForegroundImageX, ForegroundImageY, ForegroundImageWidth, ForegroundImageHeight;
float picPortraitX, picPortraitY, picPortraitWidth, picPortraitHeight;
PImage picBackground;
PImage picForeground;
PImage picPortrait;
Boolean nightmode=false;
Boolean brightnessControl=false; //<- ->
int brightnessNumber=255; //Range 1-255
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight;
  size(2000, 2000);
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  int hourNightMode = hour(); //24-hour clock
  println(hourNightMode);
  if ( hourNightMode>17 ) {
    nightmode=true;
  } else if ( hourNightMode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  //
  picPortraitX = ForegroundImageX;
  picPortraitY = appHeight*5/8;
  picPortraitWidth = ForegroundImageWidth;
  picPortraitHeight = ForegroundImageHeight;
  //
  ForegroundImageX = appWidth*1/14;
  ForegroundImageY = appHeight*1/8;
  ForegroundImageWidth = appWidth*2/7;
  ForegroundImageHeight = appHeight*1/4;
  //
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "Images used for the Celebration Card";
  String obiImage = "Obi-wan-star-wars-jedi-23864621-800-600.jpg";
  picBackground = loadImage(imagesPath + landScapeImage + open + obiImage);
  picForeground = loadImage(imagesPath + landScapeImage + open + obiImage);
  picPortrait = loadImage(imagesPath + landScapeImage + open + obiImage);
  //
} //End setup
//
void draw() 
{
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  if ( brightnessControl==true );
  {
    if ( brightnessNumber<1 ) {
      brightnessNumber=1;
    } else if ( brightnessNumber>255 ) {
      brightnessNumber=255;
    } else {
      //Empty ELSE
    }
    tint (255, brightnessNumber);
  //
  }
  //if ( nightmode==true ) tint ( 64, 64, 40 );
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    //println(nightmode, brightnessNumber);
  } else {
  }
  image(picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image(picForeground, ForegroundImageX, ForegroundImageY, ForegroundImageWidth, ForegroundImageHeight );
  image(picPortrait, picPortraitX, picPortraitY, picPortraitWidth, picPortraitHeight);
  //rect( ForegroundImageX, ForegroundImageY, ForegroundImageWidth, ForegroundImageHeight );
  //rect( picPortraitX, picPortraitY, picPortraitWidth, picPortraitHeight );
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
  if (key==CODED && keyCode == UP || keyCode == DOWN) {
    brightnessControl = true;
    if (key==CODED && keyCode == UP) brightnessNumber++;
    if (key==CODED && keyCode == DOWN) brightnessNumber--;
  }
  //
  println(brightnessNumber);
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program

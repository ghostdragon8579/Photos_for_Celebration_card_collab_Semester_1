//Global Variables
int appWidth, appHeight;
float backgroundImageXRect, backgroundImageYRect, backgroundImageWidthRect, backgroundImageHeightRect;
float ForegroundImageXRect, ForegroundImageYRect, ForegroundImageWidthRect, ForegroundImageHeightRect;
float picPortraitXRect, picPortraitYRect, picPortraitWidthRect, picPortraitHeightRect;
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
  backgroundImageXRect = appWidth*0;
  backgroundImageYRect = appHeight*0;
  backgroundImageWidthRect = appWidth-1;
  backgroundImageHeightRect = appHeight-1;
  //
  //
  ForegroundImageXRect = appWidth*1/14;
  ForegroundImageYRect = appHeight*1/8;
  ForegroundImageWidthRect = appWidth*2.25/7;
  ForegroundImageHeightRect = appHeight*1/4;
  //
  //ForegroundImageWidth = 800;
  //ForegroundImageHeight = 600;
  //
  picPortraitXRect = ForegroundImageXRect;
  picPortraitYRect = appHeight*4/8;
  picPortraitWidthRect = ForegroundImageWidthRect;
  picPortraitHeightRect = ForegroundImageHeightRect;
  //
  //picPortraitWidth = 800;
  //picPortraitHeight = 600;
  //
  float aspectRatio = 0.0;
  float rectDimaesionMemory = 0.0;
  if( ForegroundImageWidthRect >= picPortraitHeightRect ) {
    aspectRatio = ForegroundImageHeightRect / ForegroundImageWidthRect;
  println("Obi is Landscape");
  } else {
  }
  if( picPortraitWidthRect > ForegroundImageHeightRect ) {
  println("Darth is portrait");
  } else {
  }
  //
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "Images used for the Celebration Card";
  String obiImage = "Obi-wan-star-wars-jedi-23864621-800-600.jpg";
  String darthImage = "10-star-wars-darth-vader-portrait-wallpaper-1-325x485.jpg";
  picBackground = loadImage(imagesPath + landScapeImage + open + obiImage);
  picForeground = loadImage(imagesPath + landScapeImage + open + obiImage);
  picPortrait = loadImage(imagesPath + landScapeImage + open + darthImage);
  //
} //End setup
//
void draw() 
{
  rect( backgroundImageXRect, backgroundImageYRect, backgroundImageWidthRect, backgroundImageHeightRect );
  rect( ForegroundImageXRect, ForegroundImageYRect, ForegroundImageWidthRect, ForegroundImageHeightRect );
  rect( picPortraitXRect, picPortraitYRect, picPortraitWidthRect, picPortraitHeightRect );
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
  image(picBackground, backgroundImageXRect, backgroundImageYRect, backgroundImageWidthRect, backgroundImageHeightRect);
  image(picForeground, ForegroundImageXRect, ForegroundImageYRect, ForegroundImageWidthRect, ForegroundImageHeightRect);
  image(picPortrait, picPortraitXRect, picPortraitYRect, picPortraitWidthRect, picPortraitHeightRect);
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

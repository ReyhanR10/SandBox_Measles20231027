//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measlesX, measlesY, measlesDiameter;
float smallerDimension;
color resetColour=#FFFFFF;
//
void setup() {
  fullScreen () ;
  appWidth = width;
  appHeight = height;
  //Ternary Operator
  smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println( "Smaller Dimension is", smallerDimension);
  //
  //Population
  faceX = appWidth*1/2;
  faceY = appHeight*1/2; 
  faceDiameter = smallerDimension;
  backgroundX = faceX - faceDiameter*1/2;
  backgroundY = faceY - faceDiameter*1/2; 
  backgroundWidth = faceDiameter;
  backgroundHeight = faceDiameter;
  leftEyeX = backgroundX+smallerDimension*1/4;
  leftEyeY = backgroundY+smallerDimension*1/4;
  eyeDiameter = smallerDimension*1/11 ;
  rightEyeX =  backgroundX+smallerDimension*3/4;
  rightEyeY = leftEyeY;
  noseX1 = faceX;
  noseY1 = rightEyeY;
  noseX2 = leftEyeX;
  noseY2 = faceY;
  noseX3 = rightEyeX;
  noseY3 = faceY;
  mouthX1 = noseX2;
  mouthY1 = backgroundY+smallerDimension*3/4;
  mouthX2 = noseX3 ;
  mouthY2 = mouthY1 ;
  mouthOpen = smallerDimension*1/8;
  mouthReset = smallerDimension/smallerDimension; //1=reset
  measlesX = random( 0, appWidth );
  measlesY = random( 0, appHeight );
  measlesDiameter = random( smallerDimension*1/80, smallerDimension*1/30 );
  ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
  //
  //DIVs
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
 ellipse( faceX, faceY, faceDiameter, faceDiameter ); 
  //ellipse( faceX, faceY, faceDiameter, faceDiameter );
  ellipse ( leftEyeX, leftEyeY, eyeDiameter, eyeDiameter );
  rect( backgroundX, backgroundY, smallerDimension/2-sqrt(sq(smallerDimension/2)/2), smallerDimension/2-sqrt(sq(smallerDimension/2)/2) );
  println(backgroundX, smallerDimension, smallerDimension/2, sq( smallerDimension/2 ), sq( smallerDimension/2 ) /2, sqrt( sq( smallerDimension/2 ) /2 ), smallerDimension/2-sqrt(sq(smallerDimension/2)/2) );
  //
} // End setup
//
void draw () {
 ellipse( leftEyeX, leftEyeY, eyeDiameter, eyeDiameter );
 ellipse( rightEyeX, rightEyeY, eyeDiameter, eyeDiameter );
 triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3  );
 line( mouthX1, mouthY1, mouthX2, mouthY2 );
 strokeWeight(mouthOpen);
 line( mouthX1, mouthY1, mouthX2, mouthY2 );
 strokeWeight(mouthReset); //1=Reset
 //
 color measlesColour = color( 255, random( 0,86), random(0, 100) );
 fill(measlesColour);
 measlesX = random( backgroundX, backgroundX+backgroundWidth );
 measlesY = random( backgroundY,backgroundY+backgroundHeight );
 measlesDiameter = random( smallerDimension*1/80, smallerDimension*1/30 );
 noStroke();
 ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
 stroke(1); //default is 1  
 fill(resetColour);
} //End draw
//
void keyPressed () {} // End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End Main Program

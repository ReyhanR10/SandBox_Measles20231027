//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measlesX, measlesY, measlesDiameter;
float button1X, button1Y, button2X, button2Y, button3X, button3Y, buttonSide;
float smallerDimension;
Boolean measlesON=false, splashScreen=false;
color red=#E31717, blue = #131BEA, yellow = #EFF716, resetColour=#FFFFFF;
String start="Start", stop="STOP", quit="QUIT";
PFont buttonFont;
color hoverOverColour=resetColour;
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
  buttonFont = createFont("Cambria", 70);
  //
  //DIVs
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  ellipse( faceX, faceY, faceDiameter, faceDiameter ); 
  //4 Inscribed buttons on the background square not on the circle
  //Solve Isolceles leg length to find rect() width and height
  //2x^2 = radius^2
  buttonSide = smallerDimension/2-sqrt( sq(smallerDimension/2)/2);
  button1X = backgroundX;
  button1Y = backgroundY;
  button2X = backgroundX+faceDiameter-buttonSide;
  button2Y = button1Y;
  button3X = button2X;
  button3Y = backgroundY+faceDiameter-buttonSide;
  rect( button1X, button1Y, buttonSide, buttonSide );
  rect( button2X, button2Y, buttonSide, buttonSide );
  rect( button3X, button3Y, buttonSide, buttonSide );
  println(backgroundX, smallerDimension, smallerDimension/2, sq( smallerDimension/2 ), sq( smallerDimension/2 ) /2, sqrt( sq( smallerDimension/2 ) /2 ), smallerDimension/2-sqrt(sq(smallerDimension/2)/2) );
  //
} // End setup
//
void draw () {
 //Text Code
if (splashScreen==false) background(0);
if (splashScreen==true) MealesProgram();
} //End draw
//
void keyPressed() {
  if ( key==' ') measlesON=true; 
  if ( keyCode==BACKSPACE ) measlesON=false; //BOTH DONT NEEDED A KEY==CODED 
  if ( keyCode==ESC )  println("quit"); 
} // End keyPressed    
//
void mousePressed() {
  splashScreen=true;
  //
  if (mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide) measlesON=true; 
  if (mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide) measlesON=false; //STOP BUTTON
  if (mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide) exit();  //QUIT BUTTON 
} //End mousePressed
//
//End Main Program

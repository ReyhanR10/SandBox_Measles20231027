void MealesProgram () {
   //Text Code
 println(button1X, mouseX, button1X+buttonSide, hoverOverColour);
 if ( mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide) { //Button 1
   println("here");
   hoverOverColour = red;
   fill( hoverOverColour);
   rect( button1X, button1Y, buttonSide, buttonSide );
   fill( resetColour );
 }else if (mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide) { //Button 2
 hoverOverColour = blue;
   fill(hoverOverColour);
   rect( button2X, button2Y, buttonSide, buttonSide );
 }else if (mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide) { //Button 3
 hoverOverColour = yellow;
 fill( hoverOverColour );
 rect( button3X, button3Y, buttonSide, buttonSide );
 } else { //No Buttons
 hoverOverColour = resetColour;
  fill( hoverOverColour );
  rect( button1X, button1Y, buttonSide, buttonSide );
  rect( button2X, button2Y, buttonSide, buttonSide );
  rect( button3X, button3Y, buttonSide, buttonSide );
 }
  //
 fill(red); //ink
 textAlign(CENTER, CENTER);
 int size = 50;
 textFont(buttonFont, size);
 text( start, button1X, button1Y, buttonSide, buttonSide );
 text( stop, button2X, button2Y, buttonSide, buttonSide );
 text( quit, button3X, button3Y, buttonSide, buttonSide );
 //
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
 measlesDiameter = random(smallerDimension*1/150, smallerDimension*1/30);
 measlesX = random( backgroundX+(measlesDiameter/2), (backgroundX+backgroundWidth)-(measlesDiameter/2) );
 measlesY = random( backgroundY+(measlesDiameter/2), (backgroundY+backgroundHeight)-(measlesDiameter/2) );
   while ( measlesX <= button1X+buttonSide+(measlesDiameter/2) && measlesY <= button1Y+buttonSide+(measlesDiameter/2)) {
    measlesX = random( button1X+buttonSide+(measlesDiameter/2), (backgroundX+backgroundWidth)-(measlesDiameter/2) );
  }
  /*
  if ( measleY < button1Y+buttonSide+(measleDiameter/2) ) {
    println("\t\tYhere", measleY, button1Y+buttonSide);
    measleY = random( button1Y+buttonSide+(measleDiameter/2), (backgroundY+backgroundHeight)-(measleDiameter/2) );
  }
  */
 //+buttonSide
 //+buttonSide
 //if () {}  
 noStroke();
 if ( ((measlesX-faceX)*(measlesX-faceX))+((measlesY-faceY)*(measlesY-faceY)) < sq( ((faceDiameter/2)-(measlesDiameter/2)) ) ) { //Measle on Circle
   if ( measlesON==true ) ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
 }
 stroke(1); //default is 1  
 fill(resetColour);
} 

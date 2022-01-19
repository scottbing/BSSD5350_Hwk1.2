import processing.pdf.*;

HelperFunctions hf = new HelperFunctions();

//Lesson 1.1
//Code taken from Daniel Shiffman's video below and modified with comments
// https://www.voutube.com/watch?v=o8dffr286os&list=PL6Uak5uKONDGXWAL99560YA D78 fM&index=9

//setup is run one time when the program first starts
void setup() {
  size(1024, 768, PDF, "color.pdf");  //size of canvas
  //size(500, 500); //set the size of the screen.
  frameRate(24);
  smooth(); //smoots animation from transition
  //Screen size must be set before the program is run!
  noLoop();  //only calls draw() once
}

//draw is called repeatedly and automatically for the life of the program after setup is called void draw() {
void draw() {
  ColorPalette randomC = new ColorPalette();
  swatchColor(randomC); //call to custom helper function below 
  hf.save("img", "["+String.valueOf(randomC.getBaseColor())+"]");
}

void swatchColor(ColorPalette cp){ 
    rectMode(CENTER);
    strokeWeight(0);
    int padding = int(height * .1);
    fill(cp.getAnalogues()[0]);
    rect(width/2, height - (height)/2, width, height); 
    fill(cp.getBaseColor());
    rect(width/2, height - (height/1.5)/2 - padding, width/1.5, height/1.5); 
    fill(cp.getAnalogues()[1]);
    rect(width/2, height-(height/3)/2 - padding*2, width/3, height/3);
}

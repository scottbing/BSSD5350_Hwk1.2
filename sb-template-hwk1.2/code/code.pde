import processing.pdf.*;

HelperFunctions hf = new HelperFunctions();

//Lesson 1.1
//Code taken from Daniel Shiffman's video below and modified with comments
// https://www.voutube.com/watch?v=o8dffr286os&list=PL6Uak5uKONDGXWAL99560YA D78 fM&index=9

//setup is run one time when the program first starts
void setup() {
  //size(1024, 768, PDF, "color.pdf");  //size of canvas
  size(400, 400); //set the size of the screen.
  strokeWeight(0);
  frameRate(24);
  smooth(); //smoots animation from transition
  //Screen size must be set before the program is run!
  noLoop();  //only calls draw() once
}

//draw is called repeatedly and automatically for the life of the program after setup is called void draw() {
void draw() {
  ColorPalette randomC = new ColorPalette();
  swatchColor(randomC); //call to custom helper function below 
  //hf.save("img", "["+String.valueOf(randomC.getBaseColor())+"]");
  //exit();
}

void swatchColor(ColorPalette cp) {
  fill(cp.getBaseColor());
  rect(0, 0, width, height/3);
  fill(cp.getAnalogues()[0]);
  rect(0, height*1/3, width/4, height/3); 
  fill(cp.getAnalogues()[1]);
  rect(0, height*2/3, width/4, height/3);
  fill(cp.getComplement());
  rect(width/4, height/3, width/2, height*2/3);
  fill(cp.getMonochromes()[0]);
  rect(width*3/4, height*1/3, width/4, height/3);
  fill(cp.getMonochromes()[1]);
  rect(width*3/4, height*2/3, width/4, height/3);
}

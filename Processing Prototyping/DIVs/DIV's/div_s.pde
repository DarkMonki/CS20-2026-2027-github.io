// Library - Minim
//
// Global Variables
int appWidth, appHeight;
//
void setup() {
  // println(displayWidth, displayHeight); // Inspection of Variables
  // size(700, 500); // width // height // 700, 500
  fullScreen(); // displayWidth // displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
} // End setup
//
void draw() {
  background(200); // Clears background each frame
  divs();          // Draws all your rectangle DIVs continuously
} // End draw
//
void mousePressed() {
} // End Mouse Pressed
//
void keyPressed() {
} // End Key Pressed
//
// End MAIN Program

//Global Vaqriables
int numberOfDIVs = 1;
int numberOfParameters = 4;
float[] divs = new float[numberOfDIVs*numberOfParameters];
//
void divs() {
  //
  float paperWidth = 279;
  float paperHeight = 216;
  divs[0] = appWidth * 57 / paperWidth;
  divs[1] = appHeight * 40 / paperHeight;
  divs[2] = appWidth * 167 / paperWidth;
  divs[3] = appHeight * 126 / paperHeight;
  //rectDIV(divs[0], divs[1], divs[2], divs[3]); //Demonstration Only
  //
  //printArray(divs);
  //
  for ( int i=0; i<divs.length; i+=4 ) {
    rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
  } //End FOR
  //
}//End DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //D
  rect(x, y, w, h);
}//End Rectangle Code
//
//
//End Subprogram DIVs

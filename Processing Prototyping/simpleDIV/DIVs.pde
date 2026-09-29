//Global Variables
int numberOfDIVs = 3; // Updated to 3
int numberOfParameters = 4;
float[] divs = new float[numberOfDIVs * numberOfParameters];
//

void divs() {
  //
  float paperWidth = 279;
  float paperHeight = 216;
  
  // First DIV
  divs[0] = appWidth * 57 / paperWidth;
  divs[1] = appHeight * 33 / paperHeight;
  divs[2] = appWidth * 160 / paperWidth;
  divs[3] = appHeight * 130 / paperHeight;
  
  // Second DIV
  divs[4] = appWidth * 10 / paperWidth;
  divs[5] = appHeight * 170 / paperHeight;
  divs[6] = appWidth * 22 / paperWidth;
  divs[7] = appHeight * 24 / paperHeight;

  // Third DIV
  divs[8]  = appWidth * 247 / paperWidth;
  divs[9]  = appHeight * 15 / paperHeight; 
  divs[10] = appWidth * 22 / paperWidth;
  divs[11] = appHeight * 24 / paperHeight;

  //
  for (int i=0; i<divs.length; i+=4) {
    rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
  } //End FOR
  //
} //End DIVs

void rectDIV(float x, float y, float w, float h) {
  //D
  rect(x, y, w, h);
} //End Rectangle Code
//
//End Subprogram DIVs

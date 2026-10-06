//Global Variables
int numberOfDIVs = 3;
int numberOfParameters = 4;
float[] divs = new float[numberOfDIVs * numberOfParameters];
//

void divs() {
  //
  float paperWidth = 279.0;
  float paperHeight = 216.0;
  
  // First DIV
  divs[0] = appWidth * 1/4 ;
  divs[1] = appHeight * 1/5 ;
  divs[2] = appWidth * 1/2 ;
  divs[3] = appHeight * 1/2 ;
  
  // Second DIV
  divs[4] = appWidth * 0.1 / paperWidth;
  divs[5] = appHeight * 199 / paperHeight;
  divs[6] = appWidth * 14 / paperWidth;
  divs[7] = appWidth * 14 / paperWidth;

  // Third DIV
  divs[8]  = appWidth * 264 / paperWidth;
  divs[9]  = appHeight * 0.1 / paperHeight; 
  divs[10] = appWidth * 15 / paperWidth;
  divs[11] = appWidth * 15 / paperWidth;

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

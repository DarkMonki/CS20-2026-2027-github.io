//
//Global Variables
int numberOfDIVs = 19;
int numberOfParameters = 4;
float divs[] = new float[numberOfDIVs*numberOfParameters];
//
void divs() {
  // Box 0
  for ( int i=0; i<4; i++) {
    if ( i%4==0 ) {
      divs[i] = appWidth*1/4;
    }
    if ( i%4==1 ) {
      divs[i] = appHeight*1/4;
    }
    if ( i%4==2 ) {
      divs[i] = appWidth*1/2;
    }
    if ( i%4==3 ) {
      divs[i] = appHeight*1/2;
    }
  }
  printArray(divs);

  //
  float referent = divs[2] / 12;
  float column1 = divs[0] + referent;
  float row1 = divs[1] + referent;
  float textWidth = referent*5;
  float textHeight = referent*3;
  float column2 = column1 + referent;
  float column3 = column2 + referent;
  float column4 = column3 + referent;
  float column5 = column4 + referent;
  float column6 = column5 + referent*2;
  float row2 = row1 + textHeight + referent* 1/2;
  float row3 = row2 + referent + referent* 1/2;

  //
  float testHeight = referent* 2.5 + textHeight* 2;
  float errorIncrease = referent* 1/2;
  while (divs[3] < testHeight) {
    divs[1] -= errorIncrease;
    row1 = divs[1] + referent;
    row2 = row1 + textHeight + referent* 1/2;
    row3 = row2 + referent + referent* 1/2;
    divs[3] += errorIncrease; 
  }

  //
  int i = 4;
  divs[i] = appWidth - referent; i++;
  divs[i] = appHeight*0; i++;
  divs[i] = referent; i++;
  divs[i] = referent; i++;

  divs[i] = appWidth*0; i++;
  divs[i] = appHeight - referent; i++;
  divs[i] = referent; i++;
  divs[i] = referent; i++;

  // Inner Shapes

  // Box 16:
  divs[i] = column2 + referent*0.5; i++;
  divs[i] = row1; i++;
  divs[i] = textWidth * 1.3; i++;
  divs[i] = textHeight * 0.9; i++;

  //
  float barW = (textWidth * 1.3) / 2.0;
  float barY = row1 + (textHeight * 0.9) + (referent * 0.3);

  divs[i] = column2 + referent*0.5; i++;
  divs[i] = barY; i++;
  divs[i] = barW; i++;
  divs[i] = referent * 0.8; i++;

  divs[i] = column2 + referent*0.5 + barW; i++;
  divs[i] = barY; i++;
  divs[i] = barW; i++;
  divs[i] = referent * 0.8; i++;

  //
  float row1415Y = barY + (referent * 0.8) + (referent * 0.3);
  
  divs[i] = column2 - referent*0.2; i++;
  divs[i] = row1415Y; i++;
  divs[i] = referent * 0.8; i++;
  divs[i] = referent * 0.5; i++;

  divs[i] = column2 + referent*0.5 + (barW * 2) + referent*0.1; i++;
  divs[i] = row1415Y; i++;
  divs[i] = referent * 0.8; i++;
  divs[i] = referent * 0.5; i++;

  //
  float btn3to8W = (textWidth * 1.2) / 6.0;
  float btnsY = row1415Y + (referent * 0.5) + (referent * 0.3);

  for (int b = 0; b < 6; b++) {
    divs[i] = column2 + (b * btn3to8W); i++;
    divs[i] = btnsY; i++;
    divs[i] = btn3to8W; i++;
    divs[i] = referent * 0.9; i++;
  }

  //
  float btn9to11W = (textWidth * 0.6) / 3.0;
  float btn9to11X = column2 + (6 * btn3to8W) + referent;

  for (int b = 0; b < 3; b++) {
    divs[i] = btn9to11X + (b * btn9to11W); i++;
    divs[i] = btnsY; i++;
    divs[i] = btn9to11W; i++;
    divs[i] = referent * 0.9; i++;
  }

  //
  divs[i] = column1 - referent*0.5; i++;
  divs[i] = row1 + referent*2; i++;
  divs[i] = referent * 0.8; i++;
  divs[i] = referent * 0.8; i++;

  divs[i] = column1 - referent*0.3; i++;
  divs[i] = row1; i++;
  divs[i] = referent * 0.4; i++;
  divs[i] = referent * 1.8; i++;

  // Draw all rectangles
  for ( int j=0; j<divs.length; j+=4 ) {
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
  }//End DIVs FOR
}//End DIVs

void rectDIV(float x, float y, float w, float h) {
  rect(x, y, w, h);
}//End Rectangle Code

//End DIVs

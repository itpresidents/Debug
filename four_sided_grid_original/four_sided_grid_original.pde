int divx = 12;
int divy = 12;

float[] gridX = new float[divx*divy];
float[] gridY = new float[divx*divy];

float noiseAmount = 1.4;
float noiseOffset = .05;


void setup() {
  size(1000, 800);
  poly();
}

void draw() {
  if (mouseX>width/2) {
    lines(); // what happens when I try to count to the end of the array
  }
  else {
    lines2(); // my temporary solve that I want to fix
  }
  stroke(0);
}



void poly() {//sets the position of the points on the grid

  for (int i = 0; i<divx; i++) {
    for (int j = 0; j<divy; j++) {

      float thisX = width/divx;
      float thisY = height/divy;

      gridX[i+(j*divx)] = (i*thisX);
      gridY[i+(j*divx)] = (j*thisY);
    }
  }
}

void lines() { // for testing
  rect(0, 0, width, height);
  strokeWeight(5);
  stroke(255);
  for (int i = 0; i<divx; i++) {
    for (int j = 0; j<divy; j++) {
      if ((i+1+((j+1)*divx))<divx*divy) {
        stroke(255, 0, 0);
        line(gridX[i+(j*divx)], gridY[i+j*divx], gridX[i+1+(j*divx)], gridY[i+1+(j*divx)]);
        stroke(0, 255, 0);
        line(gridX[i+1+(j*divx)], gridY[i+1+(j*divx)], gridX[i+1+((j+1)*divx)], gridY[i+1+((j+1)*divx)]);
        stroke(0, 0, 255);
        line(gridX[i+1+((j+1)*divx)], gridY[i+1+((j+1)*divx)], gridX[i+((j+1)*divx)], gridY[i+((j+1)*divx)]);
        stroke(255, 0, 255);
        line(gridX[i+((j+1)*divx)], gridY[i+((j+1)*divx)], gridX[i+(j*divx)], gridY[i+j*divx]);
      }
    }
  }
}

void lines2() { // for testing
  rect(0, 0, width, height);
  strokeWeight(5);
  stroke(255);
  for (int i = 0; i<divx; i++) {
    for (int j = 0; j<divy; j++) {
      if (i+1<divx&&j+1<divy) {
        stroke(255, 0, 0);
        line(gridX[i+(j*divx)], gridY[i+j*divx], gridX[i+1+(j*divx)], gridY[i+1+(j*divx)]);
        stroke(0, 255, 0);
        line(gridX[i+1+(j*divx)], gridY[i+1+(j*divx)], gridX[i+1+((j+1)*divx)], gridY[i+1+((j+1)*divx)]);
        stroke(0, 0, 255);
        line(gridX[i+1+((j+1)*divx)], gridY[i+1+((j+1)*divx)], gridX[i+((j+1)*divx)], gridY[i+((j+1)*divx)]);
        stroke(255, 0, 255);
        line(gridX[i+((j+1)*divx)], gridY[i+((j+1)*divx)], gridX[i+(j*divx)], gridY[i+j*divx]);
      }
    }
  }
}

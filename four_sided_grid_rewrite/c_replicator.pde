/*
*
* Finally we're ready to replicate our rectanlge to create the grid
* Introduce a typo as an excuse for printing
* Comment the code
*/

int numCols = 20;
int numRows = 10;
int colWidth, rowHeight;

void setup() {
  size(800, 600); 
  colWidth = width/numCols;
  rowHeight = height/numRows;
}


void draw() {
  //for (int i = 0; i < numCols; i++) {
  //  for (int j = 0; j < numRows; j++) {

  /*
  * Show how even the iterator variables can have more meaningful names
  */  
  for (int thisCol = 0; thisCol < numCols; thisCol++) {
    for (int thisRow = 0; thisRow < numRows; thisRow++) {
      int nextCol = thisCol+1;
      int nextRow = thisRow+1;
      
      println("thisCol: " + thisCol + "\t" + "thisRow: " + thisRow + "\t" + "nextCol: " + nextCol + "\t" + "nextRow: " + nextRow); 

      int topLeftX = thisCol*colWidth;
      int topLeftY = thisRow*rowHeight;
      int topRightX = nextCol*colWidth;
      int topRightY = topLeftY;
      int bottomRightX = topRightX;
      int bottomRightY = nextRow*rowHeight;
      int bottomLeftX = topLeftX;
      int bottomLeftY = bottomRightY;

      line(topLeftX, topLeftY, topRightX, topRightY);
      line(topRightX, topRightY, bottomRightX, bottomRightY);
      line(bottomRightX, bottomRightY, bottomLeftX, bottomLeftY);
      line(bottomLeftX, bottomLeftY, topLeftX, topLeftY);
    }
  }
}


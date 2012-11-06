float r; 
float g;
float b;
float a; 
int pupilx1 = 203; 
int pupilx2 = 312; 
int y= 200;
int pupilrad = 30; 
int d = 30; 
int newpupilX;
int newpupilX2;
int radius = 40;
int ellipseX= 245;
int ellipseY= 400;

void setup() {
  size(500, 500); 
  colorMode(RGB, 200);
}

void draw() {

  r= random(255);
  g= random(255);
  b= random(255);
  a= random(255);

  background(173, 255, 47);
  if (mouseX>=width/2) {
    background(r, g, b, a);
  }

  //face
  fill(34, 139, 34);
  strokeWeight(3);
  rect(100, 80, 300, 300, 20);

  //scar
  arc(250, 120, 300, 20, 0, PI);
  strokeWeight(3);
  line(140, 110, 143, 137);
  line(170, 97, 170, 135);
  line(200, 110, 200, 140);
  line(240, 100, 240, 150);
  line(255, 108, 255, 140);
  line(310, 110, 310, 145);
  line(340, 117, 342, 140);

  //bolts 
  fill(105, 105, 105);
  strokeWeight(3);
  rect(30, 300, 40, 40, 2);
  rect(423, 300, 40, 40, 2);
  line(100, 320, 70, 320);
  line(400, 320, 422, 320);

  //white eyes
  fill(255, 255, 255);
  strokeWeight(3);
  ellipse(180, 200, 80, 100);
  ellipse(300, 200, 70, 95);

  //red eyes
  fill(255, 0, 0);
  ellipse(190, 200, 60, 60);
  ellipse(295, 200, 60, 60);

  //pupils
  fill(0, 0, 0);
  ellipseMode(CENTER);
  
  //left pupil
  //constrain movement of the left eye
  if (mouseX < pupilx1 - pupilrad) {
    newpupilX = pupilx1 - pupilrad;
  } 
  else if (mouseX > pupilx1 ) {
    newpupilX = pupilx1 ;
  } 
  else {
    newpupilX = mouseX;
  }       
  ellipse(newpupilX, y, pupilrad, d);

  //right pupil
  //constrain movement of the right eye
  if (mouseX < pupilx2 - pupilrad) {
    newpupilX2 = pupilx2 - pupilrad;
  } 
  else if (mouseX > pupilx2 ) {
    newpupilX2 = pupilx2;
  } 
  else {
    newpupilX2 = mouseX;
  } 
  ellipse(newpupilX2, y, pupilrad, d);

  //line(mouseX,mouseY,x1,y);


  //mouth
  fill(255, 255, 255);
  triangle(160, 350, 160, 300, 250, 310);
  line(250, 310, 300, 320);
  line(300, 320, 320, 310);
  line(170, 345, 170, 302);
  line(182, 338, 182, 303);
  line(192, 336, 194, 305);
  line(210, 329, 211, 307);
  line(221, 324, 221, 309);

  //nose
  noFill();
  arc(245, 250, 20, 20, 0, PI);

  //bowtie
  //make bowtie center expand to "eat" frankenstein
  fill(0, 0, 0);
  float d = dist(mouseX, mouseY, ellipseX, ellipseY);
  if (d < radius) {
    radius++;
    fill(0);
  } 
  else {
    fill(0);
  }
  ellipse(ellipseX, ellipseY, radius, radius);


  //redraw the bowtie to have it there as it expands
  ellipse(245, 400, 30, 40);

  //bowtie sides
  triangle(180, 427, 180, 370, 245, 395);
  triangle(250, 395, 310, 427, 310, 370);

  //polkadots
  //if the mouse is inside, make the polkadots disappear, by filling them in a different color. 
  if (d < radius) {
    fill(0);
  } 
  else {
    fill(255, 255, 255);
  }

  //fill(255, 255, 255);
  ellipse(189, 412, 11, 11);
  ellipse(189, 382, 11, 11);
  ellipse(217, 400, 11, 11);
  ellipse(210, 390, 11, 11);
  ellipse(195, 395, 11, 11);
  ellipse(205, 407, 11, 11);
  ellipse(237, 403, 11, 11);
  ellipse(243, 387, 11, 11);
  ellipse(250, 410, 11, 11);
  ellipse(252, 397, 11, 11);
  ellipse(270, 397, 11, 11);
  ellipse(289, 407, 11, 11);
  ellipse(285, 390, 11, 11);
  ellipse(302, 395, 11, 11);
  ellipse(302, 414, 11, 11);
  ellipse(302, 380, 11, 11);

  println(mouseX+":"+mouseY);
}


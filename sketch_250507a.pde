int numTree = 20;
int numUFO = 10;

void setup() {
  size(800, 600);
  background(180);
  noStroke();
  fill(0, 0, 25);
  rect(0, 0, 800, 300);
  fill(200, 173, 127);
  rect(0, 300, 800, 300);
  



  for (int i = 0; i < numTree; i++) {
    pushMatrix();
    float treeX = random(40, 760);
    float treeY = random(350, 550);
    translate(treeX, treeY);
    drawtree();
    popMatrix();
  }

  for (int j = 0; j < numUFO; j++) {
    pushMatrix();
    float ufoX = random(50, 770);
    float ufoY = random(40, 240);
    float ufoRotate = random(0, 6.28319);
    translate(ufoX, ufoY);
    rotate(ufoRotate);
    drawUFO();
    popMatrix();
  }
}



void drawtree() {
  noStroke();
  fill(0, 255, 0);
  ellipse(10, -20, 60, 70);
  fill(#793E1B);
  rect(0, 0, 20, 50);
  triangle(0, 0, -10, -20, 7, 0);
  triangle(7, 0, 13, -30, 11, 0);
  triangle(13, 0, 20, 0, 24, -24);
}



void drawUFO() {
  scale(1.25);
  fill(5, 236, 255);
  ellipse(0, 0, 30, 30);
  fill(170);
  ellipse(0, 15, 75, 27);
}

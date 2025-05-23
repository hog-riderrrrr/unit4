int numTree = 20;
int numUFO = 10;
float houseHeight;
float roofHeight;
float randomR = random(0, 255);
float flipcoin = random(0, 1);
boolean scene2;



void setup() {
  size(800, 600);
  background(180);
  if (flipcoin <= 0.5) {
    scene2 = false;
  } else {
    scene2 = true;
  }
  noStroke();
  fill(200, 173, 127);
  rect(0, 300, 800, 300);



  if (scene2 == true) {
    fill(0, 0, 25);
    rect(0, 0, 800, 300);
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
  if (scene2 == false) {
    fill(#00C5FF);
    rect(0, 0, 800, 300);
    for (int k = 0; k < 7; k++) {
      pushMatrix();
      float cloudX = random(50, 770);
      float cloudY = random(30, 120);
      translate(cloudX, cloudY);
      drawCloud();
      popMatrix();
    }
    for (int i = 0; i < numTree; i++) {
      pushMatrix();
      float treeX = random(40, 760);
      float treeY = random(320, 450);
      translate(treeX, treeY);
      drawtree();
      popMatrix();
      
    }
    for (int k = 0; k < 8; k++) {
      pushMatrix();
      float houseX = random(40, 760);
      float houseY = random(450, 520);
      houseHeight = random(55, 90);
      roofHeight = random(-50, -20);
      translate(k * 100 + 50, houseY);
      drawHouse();
      popMatrix();
    }
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
  int dotY = 17;
  noStroke();
  scale(1.25);
  fill(5, 236, 255);
  ellipse(0, 0, 30, 30);
  fill(170);
  ellipse(0, 15, 75, 27);
  fill(#FAFF00);
  ellipse(0, dotY, 5, 5);
  ellipse(-15, dotY, 5, 5);
  ellipse(15, dotY, 5, 5);
}

void drawCloud() {
  noStroke();
  scale(1.75);
  fill(255);
  ellipse(0, -5, 20, 20);
  ellipse(25, 5, 20, 20);
  ellipse(20, -10, 20, 20);
  ellipse(0, 7, 25, 25);
  ellipse(10, 5, 20, 20);
  ellipse(9, -7, 21, 21);
  ellipse(30, 0, 19, 19);
}

void drawHouse() {
  stroke(0);
  houseBody();
  doorsandwindows();
  roof();
}

void houseBody() {
  rect(0, 0, 40, houseHeight);
}

void doorsandwindows() {
  fill(#00FFEC);
  square(7, 10, 10);
  square(23, 10, 10);
  rect(15, houseHeight - 30, 10, 30);
  fill(0);
  circle(23, houseHeight - 15, 2);
}

void roof() {
  fill(255, 255, 0);
  rect(5, roofHeight - 8, 8, roofHeight * -1);
  triangle(0, 0, 20, roofHeight, 40, 0);
}

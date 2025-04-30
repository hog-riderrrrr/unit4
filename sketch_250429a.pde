int numTanks = 5;
float[] tankX = new float[numTanks];
float[] tankY = new float[numTanks];

void setup() {
  size(800, 600);
  background(220);
  
  
  for (int i = 0; i < numTanks; i++) {
    tankX[i] = random(50, 600);  
    tankY[i] = random(400, 500);
  }

  // Draw tanks
  for (int i = 0; i < numTanks; i++) {
    pushMatrix();
    translate(tankX[i], tankY[i]);
    scale(0.65);
    drawTank(0, 0);
    popMatrix();
  }
}


void drawTank(float x, float y) {
  pushMatrix();
  translate(x, y);
  drawTrackAndWheels();
  drawHull();
  drawTurret();
  drawGun();
  drawDetails();
  popMatrix();
}



void drawTrackAndWheels() {
  fill(40);
  quad(0, 60, 15, 85, 185, 85, 200, 60);
  fill(80);
  for (int i = 0; i < 10; i++) {
    ellipse(15 + i * 18, 75, 14, 14);
  }
}

void drawHull() {
  fill(139, 108, 66);
  rect(10, 30, 180, 35);
  fill(120, 90, 50);
  quad(0, 30, 10, 30, 10, 65, 0, 60);
  quad(190, 30, 200, 32, 200, 60, 190, 65);
}

void drawTurret() {
  fill(150, 120, 70);
  rect(70, 5, 65, 25, 10);
}

void drawGun() {
  fill(60);
  rect(135, 15, 40, 4);
}

void drawDetails() {
  stroke(0);
  strokeWeight(1);
  //side hatch
  fill(130, 100, 60);
  rect(130, 40, 20, 15);

  noFill();
  stroke(50);
  bezier(30, 45, 60, 25, 110, 25, 150, 45);
}

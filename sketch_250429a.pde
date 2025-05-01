int numTanks = 5;
int numMissiles = 13;
float flipCoin = random(0, 1);
boolean chaos;
float[] tankX = new float[numTanks];
float[] tankY = new float[numTanks];
float[] missileX = new float[numMissiles];
float[] missileY = new float[numMissiles];
float[] missileRotate = new float[numMissiles];



void setup() {
  size(800, 600);
  background(220);
  noStroke();
  fill(82, 235, 250);
  rect(0, 0, 800, 350);
  fill(100);
  rect(0, 300, 800, 600);
  if (flipCoin > 0.5) {
    chaos = false;
  } else {
    chaos = true;
  }

  if (chaos == false) {
    drawSun();
    textSize(16);
    fill(255);
    text("What a lovely and peaceful day", 590, 330);
  } else {
    fill(200);
    rect(0, 0, 800, 350);
    textSize(16);
    fill(255);
    text("whAt A lOvELy AnD pEaCeFuL dAy", 570, 370);
  }



  for (int i = 0; i < numTanks; i++) {
    tankX[i] = random(50, 600);
    tankY[i] = random(350, 500);
  }

  if (chaos == true) {
    for (int j = 0; j < numMissiles; j ++) {
      pushMatrix();
      missileX[j] = random(50, 700);
      missileY[j] = random(60, 300);
      missileRotate[j] = random(0, 360);
      translate(missileX[j], missileY[j]);
      rotate(missileRotate[j]);
      drawMissile();
      popMatrix();
    }
  }

  // Draw tanks
  for (int i = 0; i < numTanks; i++) {
    pushMatrix();
    translate(i * 160, tankY[i]);
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
  if (chaos == false) {
    drawGun();
  } else {
    pushMatrix();
    translate(20, 100);
    rotate(-0.7853981634);
    drawGun();
    rotate(0.7853981634);
    translate(-20, -100);
    drawTankFiring();
    popMatrix();
  }
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

void drawTankFiring() {
  pushMatrix();
  fill(255, 225, 0);
  noStroke();
  circle(152, -9, 10);
  popMatrix();
}


void drawMissile() {
  pushMatrix();

  drawMissileBody();
  drawMissileWarhead();
  drawMissileFins();
  drawMissileFlame();

  popMatrix();
}

void drawMissileBody() {
  fill(255);
  rect(0, 0, 60, 20);
}

void drawMissileWarhead() {
  fill(200, 0, 0); // red
  triangle(60, 0, 75, 10, 60, 20);
}

void drawMissileFins() {
  fill(80);
  quad(0, 0, -10, -5, 5, -5, 19, 0);
  quad(0, 20, -10, 25, 5, 25, 19, 20);
}

void drawMissileFlame() {
  noStroke();

  fill(255, 140, 0, 180);
  triangle(0, 0, -20, -10, 0, 20);


  fill(255, 255, 0, 200);
  triangle(0, 3, -15, -10, 0, 17);
}

void drawSun() {
  pushStyle();
  noStroke();
  fill(#FF2600);
  ellipse(700, 100, 100, 100);
  fill(#FF2600, 100);
  ellipse(700, 100, 125, 125);
  popStyle();
}

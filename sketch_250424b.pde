int numHouses = 10;
int numTanks = 5;

void setup() {
  size(1000, 600);
  background(200, 230, 255); // Sky blue background
  drawGround();
  drawVillage();
  drawTanks();
}

void drawGround() {
  fill(100, 200, 100);
  noStroke();
  rect(0, height * 0.75, width, height * 0.25);
}

void drawVillage() {
  for (int i = 0; i < numHouses; i++) {
    float houseWidth = random(60, 120);
    float houseHeight = random(80, 160);
    float x = i * (width / numHouses) + random(-10, 10);
    float y = height * 0.75 - houseHeight;

    drawHouse(x, y, houseWidth, houseHeight);
  }
}

void drawTanks() {
  for (int i = 0; i < numTanks; i++) {
    float x = random(50, width - 100);
    float y = random(height * 0.75 + 10, height - 60);
    float bodyWidth = random(60, 100);
    float bodyHeight = random(20, 30);
    float turretLength = random(30, 60);
   
    drawTank(x, y, bodyWidth, bodyHeight, turretLength);
  }
}

void drawTank(float x, float y, float w, float h, float turretLength) {
  // Body
  fill(random(60, 160), random(60, 160), random(60, 160));
  stroke(0);
  rect(x, y, w, h, 5);
 
  // Turret base
  float turretBaseSize = h;
  ellipse(x + w * 0.3, y, turretBaseSize, turretBaseSize);
 
  // Turret cannon
  float tx = x + w * 0.3;
  float ty = y;
  strokeWeight(6);
  stroke(50);
  line(tx, ty, tx + turretLength, ty - 10);
  strokeWeight(1);
}

void drawHouse(float x, float y, float w, float h) {
  // Body
  fill(random(100, 255), random(100, 255), random(100, 255));
  stroke(0);
  rect(x, y, w, h);

  // Roof
  int roofType = int(random(3));
  drawRoof(x, y, w, h, roofType);

  // Windows
  int windowRows = int(random(1, 3));
  int windowCols = int(random(1, 3));
  drawWindows(x, y, w, h, windowRows, windowCols);

  // Door
  drawDoor(x, y, w, h);
}

void drawRoof(float x, float y, float w, float h, int type) {
  fill(150, 75, 0);
  if (type == 0) {
    triangle(x, y, x + w / 2, y - h * 0.4, x + w, y);
  } else if (type == 1) {
    rect(x, y - 10, w, 10);
  } else {
    arc(x + w / 2, y, w, h * 0.5, PI, TWO_PI);
  }
}

void drawWindows(float x, float y, float w, float h, int rows, int cols) {
  float windowSize = min(w, h) / 6;
  float xSpacing = (w - cols * windowSize) / (cols + 1);
  float ySpacing = (h * 0.6 - rows * windowSize) / (rows + 1);
 
  fill(255);
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      float wx = x + xSpacing + j * (windowSize + xSpacing);
      float wy = y + ySpacing + i * (windowSize + ySpacing);
      rect(wx, wy, windowSize, windowSize);
    }
  }
}

void drawDoor(float x, float y, float w, float h) {
  float doorWidth = w / 4;
  float doorHeight = h / 3;
  float doorX = x + w / 2 - doorWidth / 2;
  float doorY = y + h - doorHeight;
  fill(120, 60, 20);
  rect(doorX, doorY, doorWidth, doorHeight);
}

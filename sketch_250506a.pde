int numTree = 7;

  void setup() {
  size(600, 800);
  background(180);


  for (int i = 0; i < numTree; i++;) {
    
    drawtree(random(0, 800), random(0, 600));
    
  }

  
}



void drawtree(int x, int y) {
  noStroke();
  fill(0, 255, 0);
  ellipse(10, -20, 60, 70);
  fill(#793E1B);
  rect(0, 0, 20, 50);
  triangle(0, 0, -10, -20, 7, 0);
  triangle(7, 0, 13, -30, 11, 0);
  triangle(13, 0, 20, 0, 24, -24);
}

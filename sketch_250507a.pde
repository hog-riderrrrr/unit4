int numTree = 20;
  void setup() {
  size(800, 600);
  background(180);



  for(int i = 0; i < numTree; i++) {
    pushMatrix();
  float treeX = random(40, 760);
  float treeY = random(300, 550);
    translate(treeX, treeY);
    drawtree();
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



void drawUFO(){
  fill(5, 236, 255);
  ellipse(0, 0, 30, 30);
  fill(170);
  
  
  
  
}

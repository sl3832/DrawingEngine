//Circle [] c = new Circle [1];
//Rect [] r = new Rect [1];

ArrayList<Circle> circle = new ArrayList<Circle>();
ArrayList<Rect> rect = new ArrayList<Rect>();


void setup() {
  size(800, 600);
  background(255);
  smooth();
}

void draw() {
   noFill();
  beginShape();
  for (int i = 0; i<circle.size()-1; i++) {

    Circle c = circle.get(i);
    curveVertex(c.display().x, c.display().y);
  }
  endShape();
  noFill();
  beginShape(QUADS);
  for (int i = 0; i<rect.size()-1; i++) {
    Rect r = rect.get(i);
   // curveVertex(r.display().x, r.display().y);
   vertex(r.display().x, r.display().y);
  }
  endShape();


  if (mousePressed) {
    if (keyPressed) {
      if (key == 'c' || key == 'C') {
        circle.add(new Circle(mouseX, mouseY, 1));
      } 
      if (key == 'r' || key == 'R') {
        rect.add(new Rect(mouseX, mouseY, 1));
      }
    }
  }
  
//  void forces(){
//    
//     for (int i = 0; i < r.length; i++) {
//    PVector gravity = new PVector(0, random(0.05));
//    PVector wind = new PVector(random(-0.1,0.1), 0
//     }
//  }
}


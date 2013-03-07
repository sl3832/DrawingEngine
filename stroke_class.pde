class Stroke {

  ArrayList <Circle> circles;
  PVector origin;

  Stroke() {
    circles = new ArrayList<Circle>();
   
  }



  void display() {
    noFill();
    beginShape();
    for (int i = 0; i<circles.size()-1; i++) {
      Circle c = circles.get(i);
      curveVertex(c.display().x, c.display().y);
    }
    endShape();
  }

  void addStroke(PVector mouse) {
    circles.add(new Circle(mouse));
  }
}


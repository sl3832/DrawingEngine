class Stroke {

  ArrayList <Circle> circles;
  ArrayList <Rect> rects;

  Stroke() {
    circles = new ArrayList<Circle>();
    rects = new ArrayList<Rect>();
  }

  void displayCircle() {
    noFill();
    beginShape();
    for (int i = 0; i<circles.size()-1; i++) {
      Circle c = circles.get(i);
      curveVertex(c.display().x, c.display().y);
    }
    endShape();
  }

  void addCircle(PVector mouse) {
    circles.add(new Circle(mouse));
  }

  void displayRectangle() {
    noFill();
    beginShape();
    for (int i = 0; i<rects.size()-1; i++) {
      Rect r = rects.get(i);
      curveVertex(r.display().x, r.display().y);
    }
    endShape();
  }

  void addRectangle(PVector mouse) {
    rects.add(new Rect(mouse));
  }
}


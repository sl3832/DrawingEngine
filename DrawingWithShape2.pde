//Circle [] c = new Circle [1];
//Rect [] r = new Rect [1];
//ArrayList<Circle> circle = new ArrayList<Circle>();

ArrayList<Rect> rect = new ArrayList<Rect>();


ArrayList <Stroke> strokes;

void setup() {
  size(800, 600);
  background(255);
  smooth();
  strokes = new ArrayList<Stroke>();
}


void draw() {
  if(strokes != null){
  if(mousePressed){
  if(keyPressed){
     if (key == 'c' || key == 'C') {
       strokes.get(strokes.size()-1).addCircle(new PVector(mouseX,mouseY));
     }
  }
  }
  }
  
  for (Stroke s: strokes){ 
    s.displayCircle();
  }
  
  noFill();
  beginShape(QUADS);
  for (int i = 0; i<rect.size()-1; i++) {
    Rect r = rect.get(i);
   // curveVertex(r.display().x, r.display().y);
   vertex(r.display().x, r.display().y);
  }
  endShape();
}

void mousePressed(){
  strokes.add(new Stroke());
     }
  
  
  
//  void forces(){
//    
//     for (int i = 0; i < r.length; i++) {
//    PVector gravity = new PVector(0, random(0.05));
//    PVector wind = new PVector(random(-0.1,0.1), 0
//     }
//  }
//}


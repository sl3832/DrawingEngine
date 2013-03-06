class Stroke{
  
  Stroke(){
  }
  
 void line(){
     noFill();
  beginShape();
  for (int i = 0; i<circle.size()-1; i++) {

    Circle c = circle.get(i);
    curveVertex(c.display().x, c.display().y);
  }
  endShape();
 } 
}

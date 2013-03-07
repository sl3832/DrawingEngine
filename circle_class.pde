class Circle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Circle(PVector loc){
    location = loc;
  //  location = new PVector(x,y);
  // mass = m;
  }
  
  PVector display(){
    //noStroke();
    stroke(36,117,170);
    strokeWeight(5);
    return location;
   // ellipse(location.x,location.y,mass*10,10);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
  }
  
    void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  } 
}

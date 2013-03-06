class Rect {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Rect(float x, float y, float m) {
    location = new PVector(x,y);
    mass = m;
  }

  PVector display() {
    //noStroke();
    stroke(229, 16, 80);
    strokeWeight(2);
    return location;
    //rect(location.x,location.y,mass*2,mass*2);
  
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
    


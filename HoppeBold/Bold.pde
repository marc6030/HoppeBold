class Bold {

  int id = 0;
  int Dia;
  PVector location;
  PVector vel;
  PVector acc;

  Bold(int dia_, float locationX, float locationY) {
    location = new PVector(locationX, locationY);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    Dia = dia_;
    id =  bold.size() + 1;
  }



  void bounce() {
    
    for (int i = 0; i < bold.size(); i++) {  
      if (this != bold.get(i) && dist(location.x,location.y, bold.get(i).location.x, bold.get(i).location.y) < 30) {
        vel.mult(-1);
      }
    }

    if (location.x < 0) {
      location.x = 0;
      vel.x *= -1;
    }

    if (location.x > width) {
      location.x = width;
      vel.x *= -1;
    }

    if (location.y > height) {
      location.y = height;
      vel.y *= -1;
    }
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(location.x, location.y, Dia, Dia);
  }


  void update() {
    location.add(vel);
    vel.add(acc);
  }

  void applyForce(PVector force) {
    acc = force;
    vel.add(acc);
  }
}

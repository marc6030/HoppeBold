ArrayList<Bold> bold;
Knap knap;
PImage skovBaggrund;
PVector gravity = new PVector(0, 0.1);
PVector wind = new PVector(0.01, 0);
PVector overfladeA = new PVector(0,350);
PVector overfladeB = new PVector(width,height);


void setup() {
  size(400, 400);
  bold = new ArrayList<Bold>();
  knap = new Knap();

  skovBaggrund = loadImage("SkovBold.jpg");
}


void draw() {
  image(skovBaggrund, 0, 0, width, height);
  for (int i = 0; i < bold.size(); i++) {
    bold.get(i).applyForce(gravity);
    bold.get(i).applyForce(wind);
    bold.get(i).display();
    bold.get(i).update();
    bold.get(i).bounce();
  }

  overflade();
  knap.display();

  stroke(5);
  line(0,350,width,height);

}

void mousePressed() {
  knap.test();
}


void overflade() {
  for (int i = 0; i < bold.size(); i++) {
    if (dist(bold.get(i).location.x, bold.get(i).location.y, bold.get(i).location.x, 0.125*bold.get(i).location.x + 350) < bold.get(i).Dia/2) {
     bold.get(i).location.y =  0.125*bold.get(i).location.x + 350 - bold.get(i).Dia/2;
     bold.get(i).vel.y *= -1;
    }
  }
}

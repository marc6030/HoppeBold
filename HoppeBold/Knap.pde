class Knap {

  int bolde = 0;

  Knap () {
  }


  void display () {
    noStroke();
    fill(200, 0, 0);
    rect(0, 0, width, height*0.1);
  }


  void test() {
      if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height*0.1) {
        for (int i = 0; i < bold.size(); i++) {
          bold.remove(i);
        }
      } else {
        bold.add(new Bold(30, mouseX, mouseY));
      }
    }
}

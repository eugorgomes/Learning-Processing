class Car {
  color c;
  float xpos;
  float ypos;
  float xvel;

  Car (color tempc, float tempxpos, float tempypos, float tempxvel) {
    c = tempc;
    xpos = tempxpos;
    ypos = tempypos;
    xvel = tempxvel;
  }

  void mostrar() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
  }

  void dirigir() {
    xpos=xpos+xvel;
    if (xpos>width) {
      xpos=0;
    }
  }
}

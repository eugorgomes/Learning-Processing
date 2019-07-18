Car mycar;
void setup() {
  size(300, 300);
  mycar = new Car(color(0,255, 255), width/2, height/2, 1);
}
void draw() {
  background(210);
  mycar.mostrar();
  mycar.dirigir();
}

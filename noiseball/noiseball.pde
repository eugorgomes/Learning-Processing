float posXbola = 150 ;
float posYbola = 130;
float largbola = 100;
float altbola = 101;
int corbolaR = 40;
int corbolaG = 130;
int corbolaB = 240;
float n1, n2, n3, n4;

void setup() {
  size(300, 300);
}
void draw() {
  n1 = map(noise(posXbola), 0, 1, 0, 300);
  n2 = map(noise(posYbola), 0, 1, 0, 300);
  n3 = map(noise(largbola), 0, 1, 0, 200);
  n4 = map(noise(altbola), 0, 1, 0, 200);
  background(230);
  noStroke();
  fill(corbolaR, corbolaG, corbolaB);
  ellipse(n1, n2, n3, n4);
  posXbola +=0.007;
  posYbola += 0.007;
  largbola += 0.007;
  altbola += 0.007;
}

float [] xpos = new float [50];
float [] ypos = new float [50];

float a = 100, b=123;

void setup() {
  size(300, 300);
  smooth();
  for (int i = 0; i<xpos.length-1; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}
void draw() {
  background(0);
  for (int i = 0; i<xpos.length-1; i++) {
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }

  xpos[xpos.length-1] = map(noise(a),0,1,0,width);
  ypos[ypos.length-1] = map(noise(b),0,1,0,height);

  a+=0.01;
  b+=0.01;

  for (int i = 0; i<xpos.length-1; i++) {
    noStroke();
    fill(0,255,255,i*5);
    ellipse(xpos[i], ypos[i], i, i);
  }
}

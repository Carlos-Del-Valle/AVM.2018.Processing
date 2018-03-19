int cuentaFrames;
int coorX, sentido;

void setupUno() {
  cuentaFrames = 0;
  coorX = width/2;
  sentido = 1;
}

void drawUno() {
  
  cuentaFrames++;
  
  if (cuentaFrames > 500) {
    pantalla = 2;
    cuentaFrames = 0;
  }
  
  background(255);
  
  fill(50, 150, 20);
  noStroke();
  ellipse(coorX, height/2, 40, 40);
  
  coorX += 5 * sentido;
  
  if(coorX > width-20 || coorX < 20) {
    sentido *= -1;
  }
}
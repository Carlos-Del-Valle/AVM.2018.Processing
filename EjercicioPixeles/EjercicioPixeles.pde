PImage[] fotos = new PImage[5];
int click, indice;
color capturaPixel, otroPixel;
float rojo, verde, azul;

void setup() {
  size(300, 400);
  fotos[0] = loadImage("playa.jpg");
  fotos[1] = loadImage("Torre.jpg");
  fotos[2] = loadImage("cuadro.jpg");
  fotos[3] = loadImage("pergamo.jpg");
  fotos[4] = loadImage("c3po.jpg");
  
  indice = 0;
}

void draw() {
   image(fotos[indice % 5], 0, 0);
   
   for(int i = 0; i < 300; i++) {
     for(int j = 0; j < 400; j++) {
       
       capturaPixel = get(i, j);
       azul = blue(capturaPixel);
       
       if (mouseX >= 150) {
         rojo = map(mouseX, 150, 300, red(capturaPixel), 255);
       }else {
         rojo = map(mouseX, 150, 0, red(capturaPixel), 0);
       }
       
       if (mouseY >= 200) {
         verde = map(mouseY, 200, 400, green(capturaPixel), 255);
       }else {
         verde = map(mouseY, 200, 0, green(capturaPixel), 0);
       }
       
       otroPixel = color(rojo, verde, azul); 
       
       set(i, j, otroPixel);
     }  
   }
}

void mousePressed() {
  
  indice++;
  println(indice);
}
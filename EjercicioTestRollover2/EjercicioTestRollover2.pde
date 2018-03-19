int fondo; 
PFont font; 
String a;
float angulo;
int pos;
int sentido;
float x;
int sentidoA;
int sentidoB;
PImage[] fotos;
int total;
int transparencia;
int diametroelipse;
int count;


void setup() {
  size(400, 400);
  font = loadFont("Monospaced-48.vlw");
  a= "Buenos días";
  textSize(48);
  noStroke();
  fondo=255;
  smooth();
  angulo = 0;
  pos=0; //Posición del texto
  sentido=1; //Cambio de sentido del texto
  x= width/2;
  sentidoA = 1;
  total = 5;
  transparencia = 255;
  diametroelipse = 200;
  
}


  void draw() {

    background (fondo);
    fill(255, 255, 0);
    rect(20, 20, 80, 80);
    rect(300, 20, 80, 80);
    rect(20, 300, 80, 80);
    rect(300, 300, 80, 80);
   
   // cuadro 1-1
   //cada frame me da un valor de fondo distinto entre 0 - 255
    if (mouseX>20 && mouseX<100 && mouseY>20 && mouseY<100) {

      count = count+1;
      if (count > 60){
        count = 0;
        fondo = (int)(random(0 , 255)); // random entiende decimales, !necesitamos enteros (int)!
      }      
     
  } 
  
  else if (mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100) {
      
      fill(255, 0, 0, transparencia);
      ellipse(width/2, height/2, diametroelipse, diametroelipse);
        
         if (diametroelipse < 0) {
          
           diametroelipse = 255;
       
       } else {
           diametroelipse -=3;
           transparencia = diametroelipse;    
           
          //diametroelipse -=3;
        
        }
    /*  
       if (transparencia < 0) {
        transparencia = 255;
        
      } else {

          transparencia -= 3;
        
        }
    */
    
  } else if (mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380) { // texto ojo preguntar vaina 130//
    
    fill(0);
    text(a, x - textWidth(a)/2, height/2);
    x += 3.0 * sentidoA;

      if (x >width - 130 || x < 0 + 130) {
      sentidoA = -sentidoA;
      }
  
  } else if (mouseX>300 && mouseX<380 && mouseY>300 && mouseY<380) {

    translate(width/2, height/2);
    rotate (angulo);

    fill(0, 255, 0);
    rect(-100, -100, 200, 200); //Preguntar esta vaina//

    angulo += 0.02;
  } else {

  fondo = 255;
  }
}
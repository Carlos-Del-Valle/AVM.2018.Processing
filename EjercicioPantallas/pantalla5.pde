
float coX, coY; // Coordenadas del círculo
float posXTex, posYTex; // Coordenadas del numero
color colCuad; // Color del cuadrado
int cont; // Contador de "mousePressed"
float diam; // Tamaño del círculo
float distancia; // distancia entre el cuadrado y el círculo.
PFont fuente;

void setupCinco() {
  noStroke();
  smooth();
  coX=40;
  coY=60;
  posXTex= width/2;
  posYTex= 160;
  colCuad= color(0);
  PFont fuente; 
  fuente = loadFont("SansSerif-140.vlw");  
  textFont(fuente);
  cont=0;
  diam = 40; 
  distancia = 200;
  
}

void drawCinco() {
  background(255);
  noStroke();
  fill(colCuad);
  rect(170 ,280 , 60,60);
  fill(200,0,0);
  ellipse(coX,coY,diam,diam);
  fill(0);
  
  textSize(12 + distancia/2);
  text(cont, posXTex,posYTex);
  
  if(coX>width){
    coX=0;
    
    if(coY>=400-tam/2){
      coY=tam/2;
    }else{
      coY +=tam;
    }
  }

  if(mouseX>170 && mouseX<170+60 && mouseY>280 && mouseY<280+60){
    colCuad= color(50,200,70);

    tam = map(mouseX,170, 230, 20, 100);


    if(mousePressed){
      coX +=6;
      colCuad= color(0,115,200);
      fill(255);
      ellipse(200,310,40,40);
      stroke(255,100,255);
      line(200, 310, coX, coY);
    }
    
  }else{
     colCuad= color(0);     
  } 
}
int pantalla;
PFont font;

int iuCoorH, iuCoorV;
int iuAncho;

void setup() {
  size(400, 400);
  pantalla = 0;
  frameRate(50);
  
  iuCoorH = 275;
  iuCoorV = 365;
  iuAncho = 30;
  
  setupUno();
  setupDos();
  setupTres();
  setupCuatro();
  setupCinco();
  
  font = loadFont("SansSerif-140.vlw");
  textFont(font, 20);
}

void draw() {
  
  if (pantalla == 0) {
    background(255);
    fill(0);
    text("Clickar para comenzar", 20, 40);
    
  }else if (pantalla == 1) {
    
    drawUno();
    dibujaBotones("Pantalla 1", 2, 3, 4, 5);
    
    
  }else if (pantalla == 2) {
    
    drawDos();
    dibujaBotones("Pantalla 2", 1, 3, 4, 5);
    
    
  }else if (pantalla == 3) {
    
    drawTres();
    dibujaBotones("Pantalla 3", 1, 2, 4, 5);
    
    
  } else if (pantalla == 4) {
    
    drawCuatro();
    dibujaBotones("Pantalla 4", 1, 2, 3, 5);
    
  }else if (pantalla == 5) {
    
    drawCinco();
    dibujaBotones("Pantalla 5", 1, 2, 3, 4);
    
  }
}


void mousePressed() {
  if (pantalla == 3) {
    cuentaClics++;
    
    if (cuentaClics > 11) {
      pantalla = 1;
      cuentaClics=0;
    }
    
  }else if (pantalla == 5) {
    if(mouseX>170 && mouseX<170+60 && mouseY>280 && mouseY<280+60){
      cont ++;
    }
  }
}

void mouseReleased() {
  
  if (pantalla == 0) {
    
    pantalla = 1; 
    iniciarVariables();
    
  }else if (pantalla == 1) {
    
    navegar(2, 3, 4, 5);
    
  }else if (pantalla == 2) {
    
    navegar(1, 3, 4, 5);
    
  }else if (pantalla == 3) {
    
    navegar(1, 2, 4, 5);
    
  }else if (pantalla == 4) {
    
     navegar(1, 2, 3, 5);
     
  }else if (pantalla == 5) {
    
     navegar(1, 2, 3, 4);
     
     if(mouseX>170 && mouseX<170+60 && mouseY>280 && mouseY<280+60){
        posXTex=random(10, 300);
        posYTex=random(100,280);
        distancia = dist(coX, coY, 200, 310);
      }   
  }
}


void dibujaBotones(String pantalla, int botonA, int botonB, int botonC, int botonD) {
  
  stroke(0);
  strokeWeight(0.5);
  
  if (mouseX>275 && mouseX<275+30 && mouseY>365 && mouseY<365+30) {
    coloreaBoton();
    rect(275,365, 30, 30);
  }else if (mouseX>305 && mouseX<305+30 && mouseY>365 && mouseY<365+30) {
    
    coloreaBoton();
    rect(305,365, 30, 30);
    
  } else if (mouseX>335 && mouseX<335+30 && mouseY>365 && mouseY<365+30) {
    
    coloreaBoton();
    rect(335,365, 30, 30);
    
  } else if (mouseX>365 && mouseX<365+30 && mouseY>365 && mouseY<365+30) {
    
    coloreaBoton();
    rect(365,365, 30, 30);
  }

  fill(0);
  textSize(20);
  text(botonA, 286, 388);
  text(botonB, 316, 388);
  text(botonC, 346, 388);
  text(botonD, 376, 388);
  text(pantalla, 5, 20);
}

void  coloreaBoton() {
  if(mousePressed) {
      fill(255,0,0);
   }else{
      fill(255,255,0);
   }
}

void navegar(int a, int b, int c, int d) {
  
  if (mouseX>iuCoorH && mouseX<iuCoorH+iuAncho && mouseY>iuCoorV && mouseY<iuCoorV+iuAncho) {
       pantalla = a;
       iniciarVariables();
     }else if (mouseX>iuCoorH+iuAncho && mouseX<iuCoorH+iuAncho*2 && mouseY>iuCoorV && mouseY<iuCoorV+iuAncho) {
      pantalla = b;
       iniciarVariables();
     }else if (mouseX>iuCoorH+iuAncho*2 && mouseX<iuCoorH+iuAncho*3 && mouseY>iuCoorV && mouseY<iuCoorV+iuAncho) {
       pantalla = c;
       iniciarVariables();
     }else if (mouseX>iuCoorH+iuAncho*3 && mouseX<iuCoorH+iuAncho*4 && mouseY>iuCoorV && mouseY<iuCoorV+iuAncho) {
       pantalla = d;
       iniciarVariables();
     }
}

void iniciarVariables() {
  cuentaFrames = 0;
  ancho = 40;
  cuentaClics = 0;
  
  coX=40;
  coY=60;
  posXTex= width/2;
  posYTex= 160;
  cont=0;
  distancia = 200;
}
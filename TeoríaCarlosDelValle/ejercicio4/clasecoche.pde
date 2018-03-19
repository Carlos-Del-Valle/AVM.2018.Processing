class Vehiculo {
  //Propiedades//
  color c;
  int forma;
  float xspeed; 
  float xpos;
  float ypos;
  float tam;
  
  //constructor//
  Vehiculo(color c, float ypos, float tam,float xspeed, int forma) {
    this.c = c;
    this.ypos = ypos;
    this.tam = tam;
    this.xspeed = xspeed;
    this.forma = forma;
    
    
  }
  
  //m'etodos//
  
  void drive () {
    xpos += xspeed;
  
  
    if (xpos > width ) {
    xpos = 0;
    }
    
    noStroke ();
    fill (c);
    
    if (forma == 0) {
      rect(xpos, ypos, tam, tam);
    } else if (forma == 1) {
      ellipse(xpos, ypos, tam, tam);
    } else if (forma ==2) {
      triangle(xpos, ypos, xpos +tam, ypos, xpos+tam/2, ypos-tam/2);
   
    }
    
  }
}
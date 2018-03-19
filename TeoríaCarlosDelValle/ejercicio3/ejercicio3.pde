
//Estructura de funcion

/*
  void nombreFuncion () {
    accion de la funcion
  
  }
  
  nombreFuncion();

*/



void setup () {
  size(500, 500); 
  coloreafondo ();
  rectangulo ();
  dibujarcirculo(160, 30, 100);
  int cajita = calculaTriple (50);
  println() cajita;
}

void draw () {
  
}

void coloreafondo () {
  background (0);
  
}

void rectangulo () {
 
  rect(100,100,200,200);

}
  
void dibujarcirculo (int diametro, int linea, int gris) {
  strokeWeight(linea);
  stroke(gris);
  ellipse(250, 250,diametro,diametro);
}

int calculaTriple (int num) {
 int resultado = num * 3;
 return resultado;
}
    
  
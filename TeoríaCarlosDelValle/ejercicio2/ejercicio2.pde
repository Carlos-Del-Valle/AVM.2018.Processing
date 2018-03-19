//Arrays

int [] Numeros = {1, 2 ,3 , 8, 4};
String [] Nombres = {"pepe", "Ana", "Luis"};

println(Numeros. length);
println(Nombres. length);

println(Nombres [1]);

//Operadores de comparación

/*igualdad ==
diferencia !=
mayor >
menor <
mayor o igual >=
menor o igual <=
*/

boolean booleana = 7 < 12;
boolean booleana2 = 7 == 12;
boolean booleana3 = 7 != 12;
println(booleana);
println(booleana2);
println(booleana3);

// ANGULOS

/*
2*PI 6.2831 360º
PI 3.14 180º
PI/2 1.570 90º

radianes = grados * PI / 180;
radianes = radians (grados)

*/

float anguloEnGrados = 30.0;
//float anguloEnRadianes = anguloEnGrados * PI / 180;
float anguloEnRadianes = radians(30.0);
println(anguloEnRadianes);

//Control de Flujo

/*
if (condición) {
  sentencias
} else {
  otras sentencias
}

*/

boolean bool = false;

if (bool == true){
  println("la condición es verdadera");
  } else {
    println("La condicion es falsa");
  }
  
  //OPERADORES LOGICOS
  
  //AND &&
  
  if (8 < 7 && 3 == 3 ) {
     println("la condición es verdadera");
  } else {
     println("La condicion es falsa");
    
  }

// OR ||

  if (3 + 9 == 12 || 5 > 2 ) {
     println("la condición es verdadera");
  } else {
     println("La condicion es falsa");
    
  }
  
  //BUCLE FOR
  
  /*
  
  for ( inicio; condicion; cambio del operador) {
    sentencias
  }
  
  */
  
  for (int i = 0;  i < 12 ; i++) {
    
     println ("I LOVE YOU JUSTIN BIEBER");
  }
  
    for (int i = 0;  i < 12 ; i++) {
    
     println ( i );
  }
  
    for (int i = 0;  i < Nombres.length ; i++) {
    
     println ( Nombres [i] );
  }
  
  
  
  
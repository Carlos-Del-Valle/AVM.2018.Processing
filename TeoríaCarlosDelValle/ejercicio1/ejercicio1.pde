// Variables 
/*
  tipo variable = valor;
*/

String texto = "PASA LOKO";
println(texto);

int numero = 42;
println(numero);
boolean booleana = true;

/*

int (numeros enteros)
float (numeros decimales)
boolean (true or false)
color (colores)
String (texto)
PImage(imégenes)
PFont (tipografías)
chart ( caracteres )
*/

//conversiones de enteros a decimales y decimales a enteros//

int entero = 4;
float decimal = 2.45;
int entero2 = int(decimal);
println(entero2);

println (float (entero) );

//post Incremento//

int resultado = 2;
resultado += 4;
println(resultado);

//resultado ++ = resultado +1//

resultado ++;
println(resultado);

//ALETORIEDAD

float azarDeDecimalesDePrueba = random (6);
println(azarDeDecimalesDePrueba);

int azarEnteros = int(random (6));
println(azarEnteros);

float rangoAzar = random(4, 8); //puede ser 4 o 7,9999999999999..../////
println(rangoAzar);

// CALCULAR

int a = 5 + 3;
int b = 5 - 3;
int c = 5 * 3;
int d = 5 / 3;
int e = 5 % 3;
float f = 5.0 / 3.0;

println(a);
println(d);
println(e);
println(f);
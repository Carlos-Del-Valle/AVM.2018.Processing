Vehiculo myCar1, myCar2, myCar3, myCar4, myCar5;

//Vehiculo(color c, float ypos, float tam,float xspeed, int forma)//
//Como Inventar Clases//

void setup () {
  size (800, 400);
  
  myCar1 = new Vehiculo(color(200,10,150), 100, 30, 5, 0);
  
  myCar2 = new Vehiculo(color(80,100,200), 200, 40, 3, 1);
  
  myCar3 = new Vehiculo(color(200,200,150), 300, 50, 8, 2);
  
  myCar4 = new Vehiculo(color(20,100,200), 350, 20, 10, 1);
  
  myCar5 = new Vehiculo(color(20,100,100), 75, 20, 50, 0);
  
  
}

//INSTANCIAS//

void draw () {
  
  background(255);

  myCar1.drive();
  myCar2.drive();
  myCar3.drive();
  myCar4.drive();
  myCar5.drive();
}

void mousePressed() {
  myCar1.ypos = random (50, 350);
  myCar2.ypos = random (50, 350);
  myCar3.ypos = random (50, 350);
  myCar4.ypos = random (50, 350);
  myCar5.ypos = random (50, 350);
  
  myCar1.xspeed = random (1, 12);
  myCar2.xspeed = random (1, 12);
  myCar3.xspeed = random (1, 12);
  myCar4.xspeed = random (1, 12);
  myCar5.xspeed = random (1, 12);
  
  myCar1.tam = random (20, 40);
  myCar2.tam = random (20, 40);
  myCar3.tam = random (20, 40);
  myCar4.tam = random (20, 40);
  myCar5.tam = random (20, 40);
  
  
  
  
  
  
  
}
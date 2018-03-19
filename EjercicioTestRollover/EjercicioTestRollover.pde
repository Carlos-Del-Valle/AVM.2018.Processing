int fondo; 
PFont font; 
String a;

void setup(){
size(400,400);
font = loadFont("Monospaced-48.vlw");
a= "Buenos días";
textSize(60);
noStroke();
fondo=255;
smooth();

}

void draw(){
  background (fondo);
  fill(255, 255, 0);
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);
  
  
  
  if (mouseX>20 && mouseX<100 && mouseY>20 && mouseY<100) {
    
    fondo = 0; 
    
  } else if (mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100) {
    fill(255, 0, 0);
    ellipse(width/2, height/2, 200,200);
     
  }else if (mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380) {
   fill(0);
    text(a, width/2 - textWidth(a)/2, height/2);

  }else if (mouseX>300 && mouseX<380 && mouseY>300 && mouseY<380) {
  fill(0,255,0);
    rect(width/2-100, height/2-100, 200,200);
    
  
 }else {
   
   fondo = 255; 
  
  }
}
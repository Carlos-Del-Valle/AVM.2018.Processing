float pos, tam;

void setupCuatro() {
  pos = 0;
  tam = 0;
}

void drawCuatro() {
  background(255);
  noFill();
 
  rect(20,330,50,50);
    
  if (mouseX> 20 && mouseX< 70 && mouseY> 330 && mouseY< 380){
     pos= map(mouseX, 20, 70 , 0, 400);
     tam= map(mouseY, 330, 380 , 0, 420);
     fill(0);
     rect(0, 200-10, pos, 20);
   
     rect(pos-20, 200-tam/2, 20, tam);
   }
}
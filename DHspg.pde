/*
Program: Safe money!! Damien Hirst Spot Painting Generator (DHspg)
Description: Safe a lot money and make your own Spot Painting like Damien Hirst!! :-)
Author: Emilio Ruiz (www.emilio.com.mx)
*/


// Inicializando variables
int posicionX;
int posicionY;
color coloring = color(random(250), random(250), random(250));
int sizeSpot;
float colorR = random(250);
float colorG = random(250);
float colorB = random(250);

// Inicializando algunas cosillas del programita
void setup(){ 
   
  
  sizeSpot = 5; // Inspirational Art value, play with this value and make Art!!!

 
 fullScreen();
 background(255);
 posicionX = sizeSpot/2;
 posicionY = sizeSpot/2;
}

 void draw(){  

   /*
 if(posicionX != displayWidth - tamanoSpot/2){
 posicionX = posicionX + tamanoSpot + tamanoSpot;
 }else{  
    posicionX = tamanoSpot/2;
    c1 = color(random(255), random(255), random(255));
 }
 */
 
 coloring = color(colorR, colorG, colorB);
 fill(coloring);
 noStroke();
 ellipse(posicionX, posicionY, sizeSpot, sizeSpot);
 
  if (posicionX <= displayWidth){
   posicionX = posicionX + sizeSpot + sizeSpot;
   colorR = random(250);
   colorG = random(250);
   colorB = random(250);
  }else{
    posicionX = sizeSpot/2;
    posicionY = posicionY + sizeSpot + sizeSpot;
  }

}

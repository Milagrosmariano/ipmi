PImage img, grilla; 

void setup(){
  size(800,400);
  img = loadImage("Ferb.jpg");
  grilla = loadImage("Grilla.jpg"); 
};
  
void draw(){
    background(87, 207, 224); //color del fondo 
    image(img, 0, 0);
    tint(0, 0, 0, 0);
    image(grilla, 0, 0);    
    noTint();
    
    /*
    fill(255, 220, 170); //color de piel
    noStroke();
    rect(500, 100, 80, 180);
    */
  
 //oreja
fill(255, 220, 170);
stroke(204, 144, 58);
strokeWeight( 3 );
ellipse(618, 190, 38, 38); // x, y, ancho, alto
ellipseMode(800);

//formita dentro de oreja
fill(255, 220, 170);
stroke(204, 144, 58);
strokeWeight( 3 );
ellipse(624, 198, 20, 20); // x, y, ancho, alto
ellipseMode(800);
  
//boca
fill(255, 220, 170);
stroke(204, 144, 58);
strokeWeight(3);
triangle(570, 250, 553, 295, 570, 295);
  
  
  // cara y cuello
    fill(255, 220, 170);
     stroke(204, 144, 58);
     strokeWeight( 3 );
    translate(60, -65);  // Posicion del quad(derecha, arriba)
   // quad(x1, y1, x2, y2, x3, y3, x4, y4); 
  quad(490, 120,  // vértice superior izquierdo
       585, 120,  // vértice superior derecho
       560, 425,  // vértice inferior derecho 
       510, 425); // vértice inferior izquierdo 
       
       // cabello 
       fill(0, 170, 0);
       stroke(0, 150, 0); // borde verde
       strokeWeight(3); //grosor
       triangle(440, 150, 495, 100, 585, 120);   // mechon izq
       triangle(525, 148, 595, 100, 585, 120);  // mechon q cae en la frente
       triangle(590, 150, 580, 120, 610, 150); //  mechon inferior derecho
       triangle(573, 148, 460, 90, 610, 120);  // mechon superior izquiero y centro derecho
       
  
  //ojo izquierdo
fill(255); //color de ojo
stroke(0);
strokeWeight( 3 );
ellipse(455, 155, 75, 100); // x, y, ancho, alto
ellipseMode(800); 

//pupila izquierda
fill(60);
noStroke();
ellipse(480, 203, 15, 15); // x, y, ancho, alto
ellipseMode(800);

//puntito blanco
fill(255);
ellipse(488, 206, 5, 5); // x, y, ancho, alto
ellipseMode(800);

   
   // nariz 
   fill(255, 220, 170); // mismo color de piel
   stroke(204, 144, 58);
   strokeWeight(3);
   rect(428, 223, 100, 75); // x, y, ancho, alto


// coordenadas
println("X: " + mouseX + " ~ Y: " + mouseY);

//ojo derecho
fill(255); //color de ojo
stroke(0);
strokeWeight( 3 );
ellipse(497, 180, 65, 70); // x, y, ancho, alto
ellipseMode(800); 

//pupila derecha
fill(60);
noStroke();
ellipse(525, 205, 15, 15); // x, y, ancho, alto
ellipseMode(800);

//puntito blanco
fill(255);
ellipse(533, 208, 5, 5); // x, y, ancho, alto
ellipseMode(800);


//camisa
fill(255, 248, 176);
stroke(0);
strokeWeight(3);
ellipse(475, 428, 125, 60);


//triangulo de camisa derecho
fill(255);
stroke(0);
strokeWeight(3);
triangle(555, 445, 535, 420, 580, 420);

//triangulo de camisa izquierdo
fill(255);
stroke(0);
strokeWeight(3);
triangle(520, 445, 500, 420, 540, 420);


// boton de camisa
fill(255);
stroke(231, 227, 182);
strokeWeight(3);
ellipse(530, 438, 15, 15); // x, y, ancho, alto
ellipseMode(800);

   };
   

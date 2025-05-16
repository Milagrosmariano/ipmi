// Mariano Milagros 
// Comision 1

PImage imagen1, imagen2, imagen3;

float tamTexto = 10;  
float textActores = 500;

PFont t; // variable de tipografía

// \n salto de linea
String titulo = "Harry Potter";
String actores = "Harry Potter: Daniel Radcliffe\nHermione Granger: Emma Watson\nRon Weasley: Rupert Grint\nRichard Harris: Albus Dumbledore\nAlan Rickman: Severus Snape\nMaggie Smith: Minerva McGonagall";
String creditos = "Director: Alfonso Cuarón\nGuionista: J.K. Rowling\nProductores: Chris Columbus, David Heyman";  

float xCreditos;

// pos y tam de circulo
int posX = 575;
int posY = 415;
int anchoBot = 50;
int altoBot = 50;

void setup() {
  size(640, 480);
  t = loadFont("ArialMT-48.vlw");
  textFont(t, 35);
  imagen1 = loadImage("nubes.jpg");
  imagen2 = loadImage("actores.jpg");
  imagen3 = loadImage("castillo.jpg");

  xCreditos = width;
}

void draw() {
  background(255);

  // PRIMERA IMAGEN
  if (tamTexto < 150) {  //duracion de tiempo en pantalla
    image(imagen1, 0, 0);
    textSize(tamTexto);
    fill(0);

    float anchoTexto = textWidth(titulo); //centrar texto
    float x = (width - anchoTexto) / 2; //centro pantalla eje x
    float y = height / 2;   //centro pantalla eje y
    text(titulo, x, y);

    tamTexto += 0.3; // velocidad cuando crece
  }

  // SEGUNDA IMAGEN
  else if (textActores > -200) {  // Si termino (tamTexto >= 200) y textActores es mayor que -200, se ejecuta
    image(imagen2, 0, 0);
    textSize(30);
    fill(255);

    float anchoTexto = textWidth(actores);  //mide el texto para centrarlo
    float x = (width - anchoTexto) / 2;  //posiciona el texto en el centro de la pantalla

    text(actores, x, textActores);
    textActores -= 1;  //el texto se desliza hacia arriba
  }

  // TERCERA IMAGEN
  else {
    image(imagen3, 0, 0);
    textSize(35);
    fill(255);

    xCreditos -= 2;  //Mueve el texto 2px a la izquierda
    if (xCreditos < -textWidth(creditos)) { //se desliza infinitamente
      xCreditos = width;
    }

    text(creditos, xCreditos, height / 2); 

    // boton
    if (mouseX > posX && mouseX < posX + anchoBot && 
        mouseY > posY && mouseY < posY + altoBot) {  //controla q el mouse este encima del bot
      fill(200); // gris si el mouse pasa por encima
    } else {
      fill(255); // blanco si no
    }

    // Figura del boton
    circle(posX + 25, posY + 25, 50);  //pos inferior derecha

    // Texto del boton
    fill(0);
    textSize(10);
    text("Reiniciar", posX + 7, posY + 30);  //texto dentro del bot
  }
}

void mousePressed() { // Se reinicia cuando hago clic en el bot
  if (tamTexto >= 150 && textActores <= -200) {  //controla q tamtexto y textActores tenga el valor xq ya se mostro imagen 1 y 2
    if (mouseX > posX && mouseX < posX + anchoBot &&
        mouseY > posY && mouseY < posY + altoBot) {
      
      tamTexto = 10;
      textActores = 500;
      xCreditos = width;
    }
  }
}

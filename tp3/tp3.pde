//Milagros Mariano
//com1
// https://youtu.be/jB6zFHAjpCg

PImage img;
color colorblanco, colornegro, colorgris;

void setup() {
  size(800, 400);
  img = loadImage("32.jpg");
  colorblanco = color(255);
  colornegro = color(0);
  colorgris = color(130);
}
void draw() {
  background(87, 207, 224);
  noStroke();
  push();
  translate(400, -20);
  for (int fila = 0; fila < 7; fila++) {
    for (int colum = 0; colum < 6; colum++) {
      int x = colum * 78;
      int y = fila * 64;

      if (impar(fila)) {
        x += 39;
      }

      if (x - 39 >= -400) {
        cubo(x, y, 39, 24, 68, 49);
      }
    }
  }
  pop();
  image(img, 0, 0, 400, 400);
}


void cubo(int x, int y, int ancho, int alto1, int alto2, int prof) { //sin retor
  push();
  translate(x, y);

  fill(colorblanco); // cara b
  quad(0, -alto1, ancho, 0, 0, alto1, -ancho, 0);

  fill(colornegro); // cara n
  quad(ancho, 0, 0, alto1, 0, alto2, ancho, prof);

  fill(colorgris); // cara g
  quad(-ancho, 0, 0, alto1, 0, alto2, -ancho, prof);
  pop();
}


boolean impar(int n) { //con retor
  if (n % 2 == 1) {
    return true;
  } else {
    return false;
  }
}
void mousePressed() {
  colorblanco = color(random(255), random(255), random(255));
  colornegro = color(random(255), random(255), random(255));
  colorgris = color(random(255), random(255), random(255));
}
void keyPressed() {  //reiniciar
  if (key == 'm' || key == 'M') {
    colorblanco = color(255);
    colornegro = color(0);
    colorgris = color(130);
  }
}

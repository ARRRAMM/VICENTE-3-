float x, y; // Posición de la figura
float speedX, speedY; // Velocidad de movimiento

void setup() {
  size(800, 600);
  x = width/2;
  y = height/2;
  speedX = random(-5, 5);
  speedY = random(-5, 5);
}

void draw() {
  background(255);
  
  // Actualiza la posición de la figura
  x += speedX;
  y += speedY;
  
  // Revierte la dirección si la figura alcanza los bordes
  if (x < 0 || x > width) {
    speedX *= -1;
  }
  if (y < 0 || y > height) {
    speedY *= -1;
  }
  
  // Dibuja la figura en la posición actual
  fill(0, 0, 255);
  ellipse(x, y, 50, 50);
}

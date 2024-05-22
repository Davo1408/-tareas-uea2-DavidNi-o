/**
 * Museo de Lerma - Nueva Sala
 * 
 * Instrucciones:
 * 1. Asegúrese de tener Processing instalado en su computadora.
 * 2. Abra este archivo en Processing.
 * 3. Haga clic en el botón de "Play" (triángulo) en la parte superior para ejecutar el programa.
 * 4. Disfrute de la pieza de arte digital en la pantalla de la entrada del museo.
 * 
 * La nueva sala se llama "Sala de los Antepasados".
 * El fondo representa los colores de Lerma.
 * Una imagen del quiosco de Lerma se muestra en la pantalla.
 * El texto se mueve lentamente de izquierda a derecha.
 * 
 * Exposición: "Raíces de Nuestra Tierra"
 * Artista: Juana Martínez
 * Fecha: 10 - 29 de septiembre de 2024
 */

PFont font;
PImage kiosko;
float x = 0;

void setup() {
  fullScreen();
  background(#5B2C6F); // Color representativo de Lerma
  
  font = createFont("Arial", 32);
  kiosko = loadImage("lerma.jpg"); // Asegúrese de que la imagen "kiosko.png" esté en la carpeta de datos del sketch
  
  textFont(font);
}

void draw() {
  background(#5B2C6F); // Volver a dibujar el fondo para limpiar la pantalla
  
  // Dibuja la imagen del kiosko
  image(kiosko, width/2 - kiosko.width/2, height/2 - kiosko.height/2 - 50);
  
  // Dibuja el círculo azul en movimiento
  fill(0, 0, 255);
  noStroke();
  ellipse(x, height/2 - 50, 200, 200);
  
  // Dibuja el nombre de la sala en letras anaranjadas sobre el círculo
  fill(255, 165, 0); // Naranja
  textAlign(CENTER, CENTER);
  text("Sala de los Antepasados", x, height/2 - 50);
  
  // Texto estático en la parte inferior derecha
  fill(0);
  textAlign(RIGHT, BOTTOM);
  text("Raíces de Nuestra Tierra", width - 10, height - 70);
  text("Juana Martínez", width - 10, height - 40);
  text("10 - 29 de septiembre de 2024", width - 10, height - 10);
  
  // Movimiento de izquierda a derecha
  x += 1;
  if (x > width) {
    x = 0;
  }
}

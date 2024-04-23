//variable de la fuente
PFont f;

void setup(){
  //tamaño del canvas
  size(600, 600);
  
  //Fuente
  f = createFont("Arial", 16, true);
  
  //color uva para el fondo
  background(130, 13, 120);
  
  //controla la velocidad del random
  frameRate(15);
  
 }

void draw(){
  //Un random para los variar los tamoños de las figuras
  float r= random(250);
  
  //Agrega un rectangulo verde que varia en su tamaño 
  fill(10, r, 10);
  rect(120, 120, r, r);
  
  //Agrega una elipse azul que varia en su tamaño
  fill(10, 10, r);
  ellipse(150, 70, r, 50); 
  
  //Texto con la fuente seleccionada, se coloca el centro y el color es nrego 
  textFont(f);
  fill(0,0,0);
  textAlign(CENTER);
  text("hola mundo",width/2,30);
}

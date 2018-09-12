boolean brush1 = false;
boolean brush2 = false; 
String result=""; 
void setup() {
  size(1900, 1000);
  background(255);
  imageMode(CENTER);
}
void draw() {
 
  fill(43, 134, 193);
  textSize(20);
  smooth();
  text("Cj's drawing project", 20, 20);
  text("Q to use normal brush", 20, 40);
  text("W to use square brush", 20, 60);
  text("G to create a graph", 20, 80);
  text("C to clear", 20, 100);
  fill(0); 
  text ("Keypress History: " + result, 20, 140);
  println(frameRate);
  fill(random(0,255),random(0,255),random(0,255)); 
}
void mouseDragged() {
  if (brush1 == true) {
    brush();
  }
  if (brush2 == true) {
    squareBrush();
  }
}

void keyPressed() {
  if (key == 'q'||key == 'Q') {
    brush1=true;
    brush2=false;
    result = result + key;
  } 
  if (key == 'W'|| key == 'w') {
    brush1=false;
    brush2=true;
    result = result + key;
  }
  if (key == 'g' || key == 'G') {
    stroke(0);
    for (int i =0; i < height; i+=30) {
      line(0, i, 1900, i);
    }
    for (int j = 0; j<width; j+=30) {
      line(j, 1000, j, 0);
    }
    result = result + key;
  }
  if (key == 'c'|| key == 'C') {
    background(255);
    result = result + key;
  }
}
void brush() {
  noStroke();
  smooth();
  ellipse(mouseX, mouseY, 20, 20);
}
void squareBrush() {
  noStroke();
  smooth();
  rectMode(CENTER);
  rect(mouseX, mouseY, 100, 50);
}

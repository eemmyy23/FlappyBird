int rad = 20;        // raza cercului
float pozX, pozY;    // pozitia initiala a cercului    

float vitezaY = 7.5;  // viteza initiala pe y
int directieY = 1;  // 1 coborare; -1 urcare
int startFrUrcare=0;
int durataFrUrcare=15;
void gameOver() {
  noLoop();
}

void setup() {
  size(560, 688);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  // setez pozitie cerc
  pozX = width/6;
  pozY = height/2;
  loop();
}

void draw() {
  println(frameCount);
  if (frameCount>=startFrUrcare+durataFrUrcare) {
    directieY=1;
  }
  if (directieY==-1) {
    vitezaY=vitezaY-0.3;
  }
  if (directieY==1) {
    if (vitezaY<7.5) {
      vitezaY=vitezaY+0.3;
    }
  }
  PImage img;
  img = loadImage("background1.png");
  background(img);

  pozY = pozY + ( vitezaY * directieY );

  // test margine jos->GameOver
  if (pozY > height-rad) {
    gameOver();
  }

  // test margine sus->cadere
  if (pozY<rad) {
    directieY=1;
  }
  // deseneaza cercul
  ellipse(pozX, pozY, rad, rad);
}

void keyPressed() {
  directieY=-1;
  startFrUrcare=frameCount;
  vitezaY=7.5;
}

void mouseClicked() {
  setup();
}
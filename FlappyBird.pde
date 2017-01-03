 int rad = 20,a=0;        // raza cercului
float pozX, pozY;    // pozitia initiala a cercului    

float vitezaY = 8.5;  // viteza initiala pe y
int directieY = 1;  // 1 coborare; -1 urcare
int startFrUrcare=0;
int durataFrUrcare=15;
Obstacol o1, o2, o3;
void gameOver() {
  noLoop();
}

void setup() {
  randomSeed(10);
  size(558, 686);
  o1 = new Obstacol(width, height/2);
  o2 = new Obstacol(width + 93 * 3, height/2);
  o3 = new Obstacol(width + 93 * 6, height/2);
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

  PImage img;
  img = loadImage("background1.png");
  background(img);

  o1.move();
  o1.display();

  o2.move();
  o2.display();

  o3.move();
  o3.display();

  if (      
    o1.coleziune(pozX, pozY, rad) ||
    o2.coleziune(pozX, pozY, rad) ||
    o3.coleziune(pozX, pozY, rad)
    ) {    
    gameOver();
  }
  else
  if(  o1.coleziune(pozX, pozY, rad) ||
    o2.coleziune(pozX, pozY, rad) ||
    o2.coleziune(pozX, pozY, rad)
  ){
    print(a);
    a++;
  }
    


  if (frameCount>=startFrUrcare+durataFrUrcare) {
    directieY=1;
  }
  if (directieY==-1) {
    vitezaY=vitezaY-0.5 ;
  }
  if (directieY==1) {
    if (vitezaY<9.5) {
      vitezaY=vitezaY+1;
    }
  }


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
  stroke(0,0,0);
  strokeWeight(1.8);
  fill(245, 50, 20);
  ellipse(pozX, pozY, rad, rad);
  
  fill(255, 255, 255);
  ellipse(pozX+rad/5, pozY-rad/2 , rad/3, rad/4);
  fill(0, 0, 0);
  ellipse(pozX+rad/5+2, pozY-rad/2-1, rad/6, rad/9);
  
  fill(255, 255, 255);
  ellipse(pozX+rad/2+2, pozY-3*rad/4, rad/4, rad/5);
  fill(0, 0, 0);
  ellipse(pozX+rad/2+4, pozY-3*rad/4-1, rad/10, rad/10);
  
  fill(245, 50, 20);
  quad(pozX-rad, pozY-rad/5, pozX-rad, pozY+rad/5, pozX-4*rad/3, pozY+rad/3, pozX-4*rad/3, pozY-rad/3 );

fill(450, 220, 100);
triangle(pozX+3*rad/4, pozY+2, pozX+rad-2, pozY-rad/4, pozX+5*rad/4+1, pozY+2);

fill(250, 820, 100);
quad(pozX+3*rad/4, pozY+2,pozX+5*rad/4-3,pozY+2, pozX+5*rad/4 , pozY+rad/4 , pozX+rad-2, pozY+rad/4+2 );


}
void keyPressed() {
  directieY=-1;
  startFrUrcare=frameCount;
  vitezaY=7.5;
}

void mouseClicked() {
  setup();
}
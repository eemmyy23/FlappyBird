class Obstacol {
  float pozX;
  float caleY;
  float vitezaX = 3;
  float directieX = -1;
  float latimeObstacol=93;
  int inaltimeCale=70;
  Obstacol(float pozXin, float caleYin) {
    pozX = pozXin;
    caleY = random(inaltimeCale + 20 , height - inaltimeCale - 20);;
  }
  
  void move() {
    pozX=pozX + vitezaX * directieX;
  }
  
  void display() {
    fill(0,255,100);
    rectMode(CORNERS);
    rect(pozX,caleY-inaltimeCale,pozX+latimeObstacol,0);
    rect(pozX,caleY+inaltimeCale,pozX+latimeObstacol,height);
    println("rect(",pozX,0,pozX+latimeObstacol,height,");");
    
  }
  
}
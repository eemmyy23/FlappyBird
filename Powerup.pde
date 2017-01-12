class Powerup {
  float pozX, pozPX, pozPY;
  float caleY;
  float vitezaX = 3;
  float directieX = -1;
  float latimeObstacol=93;
  int inaltimeCale=90;
  Powerup(float pozXin, float caleYin) {
    pozPX = pozXin;
    pozPY = caleYin;
  }
 

  void move() {
    pozPX=pozX + vitezaX * directieX;
    if (pozPX < -latimeObstacol) {
      pozPX = width + 2 * latimeObstacol;
      //caleY = random(inaltimeCale + 20, height - inaltimeCale - 20);
    }
  }

  void display() {
    stroke(0, 0, 0); 
    strokeWeight(1.8);
    fill(255, 195, 20);
   ellipseMode(RADIUS);
  pozPX = pozX;         
  pozPY = caleY;

  }
  boolean trecereObstacol(float centruX) {
    if (centruX==pozX) {
      return true;
    } 
    return false;
  }


  boolean coleziune(float centruX, float centruY, float raza) {
    if ( centruX + raza >= pozX  && centruY - raza <= caleY-inaltimeCale &&  centruX - raza <= pozX+latimeObstacol) {
      return true;
    }
    if ( centruX + raza >= pozX  && centruY + raza >= caleY+inaltimeCale && centruX - raza <= pozX+latimeObstacol) {
      return true;
    }
    return false;
  }
}
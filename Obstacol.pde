class Obstacol {
  float pozX;
  float caleY;
  float vitezaX = 3;
  float directieX = -1;
  float latimeObstacol=93;
  int inaltimeCale=70;
  Obstacol(float pozXin, float caleYin) {
    pozX = pozXin;
    caleY = random(inaltimeCale + 20, height - inaltimeCale - 20);
    ;
  }
 
  void move() {
    pozX=pozX + vitezaX * directieX;
    if (pozX < -latimeObstacol) {
      pozX = width + 2 * latimeObstacol;
      caleY = random(inaltimeCale + 20, height - inaltimeCale - 20);
    }
  }

  void display() {
    stroke(0, 0, 0); 
    strokeWeight(1.8);
    fill(40, 195, 20);
    rectMode(CORNERS);
    rect(pozX, caleY-inaltimeCale, pozX+latimeObstacol, 0);
    line(pozX, caleY-inaltimeCale, pozX+latimeObstacol, caleY-inaltimeCale);
    line(pozX-1, caleY-inaltimeCale, pozX-1, caleY-inaltimeCale-35);
    
    
    point(pozX+1, caleY-inaltimeCale-2);
    point(pozX+latimeObstacol-1, caleY-inaltimeCale-2);
    point(pozX+1, caleY+inaltimeCale+2);
    point(pozX+latimeObstacol-1, caleY+inaltimeCale+2);
    line(pozX-1, caleY-inaltimeCale-35, pozX+13, caleY-inaltimeCale-35);
    line(pozX+13, caleY-inaltimeCale-42, pozX+26, caleY-inaltimeCale-42);
    line(pozX+26, caleY-inaltimeCale-49, pozX+39, caleY-inaltimeCale-49);
    line(pozX+39, caleY-inaltimeCale-56, pozX+54, caleY-inaltimeCale-56);
    line(pozX+54, caleY-inaltimeCale-49, pozX+67, caleY-inaltimeCale-49);
    line(pozX+67, caleY-inaltimeCale-42, pozX+80, caleY-inaltimeCale-42); 
    line(pozX+80, caleY-inaltimeCale-35, pozX+latimeObstacol+1, caleY-inaltimeCale-35);
    
    line(pozX+13, caleY-inaltimeCale-35, pozX+13, caleY-inaltimeCale-42);
    line(pozX+26, caleY-inaltimeCale-42, pozX+26, caleY-inaltimeCale-49);
    line(pozX+39, caleY-inaltimeCale-49, pozX+39, caleY-inaltimeCale-56);
    line(pozX+54, caleY-inaltimeCale-56, pozX+54, caleY-inaltimeCale-49);
    line(pozX+67, caleY-inaltimeCale-49, pozX+67, caleY-inaltimeCale-42);
    line(pozX+80, caleY-inaltimeCale-42, pozX+80, caleY-inaltimeCale-35);
    line(pozX+latimeObstacol+1, caleY-inaltimeCale, pozX+latimeObstacol+1, caleY-inaltimeCale-35);
    
    rect(pozX, caleY+inaltimeCale, pozX+latimeObstacol, height);
     line(pozX, caleY+inaltimeCale, pozX+latimeObstacol, caleY+inaltimeCale);
    line(pozX-1, caleY+inaltimeCale, pozX-1, caleY+inaltimeCale+35);
    line(pozX-1, caleY+inaltimeCale+35, pozX+13, caleY+inaltimeCale+35);
    line(pozX+13, caleY+inaltimeCale+42, pozX+26, caleY+inaltimeCale+42);
    line(pozX+26, caleY+inaltimeCale+49, pozX+39, caleY+inaltimeCale+49);
    line(pozX+39, caleY+inaltimeCale+56, pozX+54, caleY+inaltimeCale+56);
    line(pozX+54, caleY+inaltimeCale+49, pozX+67, caleY+inaltimeCale+49);
    line(pozX+67, caleY+inaltimeCale+42, pozX+80, caleY+inaltimeCale+42); 
    line(pozX+80, caleY+inaltimeCale+35, pozX+latimeObstacol+1, caleY+inaltimeCale+35);
    
    line(pozX+13, caleY+inaltimeCale+35, pozX+13, caleY+inaltimeCale+42);
    line(pozX+26, caleY+inaltimeCale+42, pozX+26, caleY+inaltimeCale+49);
    line(pozX+39, caleY+inaltimeCale+49, pozX+39, caleY+inaltimeCale+56);
    line(pozX+54, caleY+inaltimeCale+56, pozX+54, caleY+inaltimeCale+49);
    line(pozX+67, caleY+inaltimeCale+49, pozX+67, caleY+inaltimeCale+42);
    line(pozX+80, caleY+inaltimeCale+42, pozX+80, caleY+inaltimeCale+35);
   line(pozX+latimeObstacol+1, caleY+inaltimeCale, pozX+latimeObstacol+1, caleY+inaltimeCale+35);
    println("rect(", pozX, 0, pozX+latimeObstacol, height, ");");
  }
  
 
  boolean coleziune(float centruX, float centruY, float raza) {
    if ( centruX + raza >= pozX  && centruY + raza <= caleY-(inaltimeCale/3)-2 &&  centruX - raza <= pozX+latimeObstacol) {
      return true;
    }
      if ( centruX + raza >= pozX  && centruY + raza >= caleY+(inaltimeCale)-8 && centruX - raza <= pozX+latimeObstacol) {
      return true;
    }
    return false;
  }

  boolean trecereObstacol(float centruX, float centruY, float raza) {
    if (centruX + raza <= pozX+latimeObstacol) {
      return true;
    }
    return false;
 }
}
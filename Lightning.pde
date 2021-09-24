void setup()
{
  size(300, 300);
  strokeWeight(2);
  background(#200C74);
}
int startX=0;
int startY=0;
int endX=150;
int endY=150;

void draw()
{
  //Orb
  float g = 255;
  noFill();
  for (int diam = 0; diam < 80; diam++) {
    stroke(0, g, 0);
    ellipse(150, 150, diam+50, diam+50);
    g-=255/80.0;
    if (mousePressed)
g=random(0,50);
 
  }
  int colorA=255;
stroke(200,200,200, colorA);
  while (endY <= 300) {
    endX = startX + (int) (Math.random()*10);
    endY = startY + (int) (Math.random()*20-5);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }


}

void mousePressed()
{
  startX=0;
  startY=0;
  endX=150;
  endY=150;

}

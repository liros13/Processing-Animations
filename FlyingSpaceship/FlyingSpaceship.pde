//Flying Spaceship, Small Animation Assignment

int x = 1;
int y = 1;
int t = 255;

void setup(){
  size(800,500);
  noStroke();
}
void draw(){
  background();         
  flyingSpaceship();
}

void background(){
  fill(#0D0221);
  rect(0,0,800,500); //space sky/background
  fill(255);
  ellipse(random(width),random(height),5,5);//stars
}

void flyingSpaceship(){
  delay(25);
  t-=2;
  x+=2;
  y-=1;
  //disappearing tail
  fill(#82D3DB,255+t);
  quad(80+x,385+y,90+x,405+y,15+x,470+y,x,450+y);
  //booster
  fill(#A5A5A5);
  quad(80+x,385+y,100+x,405+y,87+x,420+y,65+x,390+y);
  //main body of spaceship
  fill(255);
  beginShape();
  vertex(160+x,320+y);
  bezierVertex(155+x,325+y,170+x,345+y,180+x,340+y);
  vertex(180+x,340+y);  
  vertex(105+x,405+y);
  bezierVertex(90+x,407+y,80+x,395+y,80+x,380+y);
  vertex(160+x,320+y);
  endShape();
  //window
  fill(#9B9B9B);
  ellipse(151+x,345+y,25,25); //rim
  fill(#EBFCEF);
  ellipse(151+x,345+y,15,15); //glass
  //tip of spaceship
  fill(#EA183E);
  beginShape();
  vertex(160+x,320+y);
  bezierVertex(155+x,325+y,170+x,345+y,180+x,340+y);
  vertex(193+x,310+y);
  endShape();
  //sticking out side-flap things
  quad(105+x,351+y,120+x,351+y,80+x,381+y,55+x,381+y); //left-most flap
  quad(115+x,370+y,120+x,377+y,83+x,408+y,76+x,400+y); //middle flap
  quad(137+x,375+y,137+x,390+y,103+x,432+y,103+x,407+y);
}

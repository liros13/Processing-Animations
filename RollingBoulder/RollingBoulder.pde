//Rolling Boulder, Small Animation Assignment

int x = 1; //initializes variable x for x-coordinates, and assings it value of 1
int y = 1; //initializes variable y for y-coordinates, and assings it value of 2
int r = 30; //variable r for radians rotated by boulders
int fRate = 100; //variable for frameRate value
int grayB = 120; //variable for boulder fill

//x- and y-coordinate values for boulderDownHill's center
int bDX=89; 
int bDY=100; 
//x- and y-coordinate values for boulderRollRight's center
int bRX = 76; 
int bRY = 410;
//x- and y-coordinate values for boulderRollLeft's center
int bLX = 1440;
int bLY = 410;

void setup(){
  size(800,500);
  noStroke();  
}

void draw(){
  //sky/background
  fill(#C5FAF5);
  rect(0,0,800,500);
  //sun
  fill(#F7E36E);
  ellipseMode(CENTER);
  ellipse(650,75,35,35);
  //clouds
  fill(255);
  beginShape();
  vertex(440,100);
  bezierVertex(435,85,445,75,460,80);
  bezierVertex(455,65,465,60,480,60);
  bezierVertex(485,30,510,30,520,60);
  bezierVertex(525,45,550,65,540,80);
  bezierVertex(550,70,580,80,580,100);
  endShape();
  beginShape();
  vertex(660,100);
  bezierVertex(660,85,670,80,680,90);
  bezierVertex(675,85,685,75,690,80);
  bezierVertex(685,70,695,55,700,60);
  bezierVertex(710,30,740,30,750,60);
  bezierVertex(755,55,765,65,760,75);
  bezierVertex(770,70,790,85,780,100);
  endShape();
  boulderRollRight();
  //hill
  fill(#B79946);
  triangle(0,43,480,500,0,500);
  boulderDownHill();
  boulderRollLeft();
  //wall
  fill(#CB562B);
  rect(760,160,800,440);
  //ground
  fill(#79B445);
  rect(0,440,800,500);
}

void boulderDownHill(){ 
  x+=1; //x-coordinate value will increase by 1 pixel each frame
  y-=1; //y-coordinate value will increase by 2 pixels each frame
  frameRate(fRate);
  pushMatrix();
  translate(89+x,100-y); 
  rotate(radians(r));
  translate(-89-x,-100+y);
  fill(grayB);
  arc(89+x,100-y,70,70,radians(190),radians(320));
  arc(89+x,100-y,60,60,radians(0),radians(190));
  arc(89+x,100-y,75,75,radians(320),radians(360));
  popMatrix();
  r++;
}

void boulderRollRight(){
  x+=1;
  y-=1;
  frameRate(fRate);
  pushMatrix();
  translate(bRX+x,bRY);
  rotate(radians(r));
  translate(-bRX-x,-bRY);
  fill(grayB);
  arc(bRX+x,bRY,70,70,radians(190),radians(320));
  arc(bRX+x,bRY,60,60,radians(0),radians(190));
  arc(bRX+x,bRY,75,75,radians(320),radians(360));
  popMatrix(); 
  r++;
}

void boulderRollLeft(){
  x+=1;
  y-=1;
  frameRate(fRate);
  pushMatrix();
  translate(bLX-x,bLY);
  rotate(radians(-r));
  translate(-bLX+x,-bLY);
  fill(grayB);
  arc(bLX-x,bLY,70,70,radians(190),radians(320));
  arc(bLX-x,bLY,60,60,radians(0),radians(190));
  arc(bLX-x,bLY,75,75,radians(320),radians(360));
  popMatrix(); 
  r++;
}

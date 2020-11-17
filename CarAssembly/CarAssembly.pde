//Car Assembly, Small Animation Assignment

int x = 200; //declares variable x and assigns it the value 200
int y = 0; //decalres variable y and assigns it the value of 0

void setup(){
  size(800,500);
  strokeWeight(2);
}
void draw(){
  background();
  carAssembly();
}

void background(){
  noStroke();
  fill(#C9E3E2);
  rect(0,0,800,500);
  //conveyor belt
  stroke(0);
  strokeWeight(4);
  fill(#A2917B);
  beginShape();
  arc(40,325,30,30,radians(90),radians(270),OPEN);
  line(40,310,760,310);
  vertex(40,310);
  vertex(760,310);
  arc(760,325,30,30,radians(270), radians(450));
  vertex(760,340);
  vertex(40,340);
  line(40,340,760,340);
  endShape(CLOSE);
  
  
  //line(40,310,760,310);
  //line(40,340,760,340);
  endShape();
}

void carAssembly(){
  strokeWeight(2);;
  frameRate(x);
  //s-=200;
  x-=1;
  y+=1;
  
  //car back frame
  fill(#D82E2E);
  beginShape();
  vertex(400-x,370-y);
  vertex(340-x,370-y);
  bezierVertex(325-x,370-y,315-x,380-y,315-x,380-y);
  vertex(315-x,380-y);
  vertex(265-x,450-y);
  vertex(260-x,450-y);
  vertex(245-x,490-y);
  vertex(270-x,490-y);
  bezierVertex(280-x,460-y,310-x,460-y,320-x,490-y);
  vertex(400-x,490-y);
  endShape();
  //window
  fill(#F2FFF4);
  beginShape();
  vertex(400-x,-20+y);
  vertex(365-x,-20+y);
  vertex(340-x,20+y);
  vertex(400-x,20+y);
  endShape();
  //back tire/wheel 
  fill(#5A523D); //treads
  ellipseMode(CENTER);
  ellipse(297+x,490-y,35,35);
  fill(#CECECE); //metal inside
  ellipse(297+x,490-y,20,20);
  //car front frame
  fill(#D82E2E);
  beginShape();
  vertex(400+x,-32+y);
  vertex(460+x,-32+y);
  bezierVertex(470+x,-32+y,480+x,-32+y,490+x,-22+y);
  vertex(540+x,18+y);
  vertex(580+x,18+y);
  bezierVertex(605+x,23+y,615+x,28+y,620+x,38+y);
  vertex(625+x,88+y);
  vertex(590+x,88+y);
  bezierVertex(580+x,58+y,550+x,58+y,540+x,88+y);
  vertex(400+x,88+y);
  endShape();
  //door
  fill(#464646);
  rectMode(CORNERS);
  rect(400+x,-20+y,410+x,20+y);
  fill(#FF5846);
  rect(400+x,20+y,520+x,88+y);
  ellipse(430+x,35+y,25,5); //door handle
  fill(#F2FFF4); //door window
  quad(410+x,382-y,470+x,382-y,520+x,422-y,410+x,422-y);
  fill(#464646); //rearview mirror
  rect(505+x,207,515+x,232);
  rect(515+x,214,520+x,224);
  //front tire/wheel
  pushMatrix();
  translate(360,0);
  fill(#5A523D); //treads
  ellipseMode(CENTER);
  ellipse(205+x,290,35,35);
  fill(#CECECE); //metal inside
  ellipse(205+x,290,20,20);
  popMatrix();
}

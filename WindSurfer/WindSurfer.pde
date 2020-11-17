//Windsurfer riding, Small Animation Assignment

int x = 1; //initalizes variable x and gives it value of 1

void setup(){
  size(800,500);
  noStroke();
}
void draw(){
  background();
  windsurfer();
}

void background(){
  //background
  //sky
  fill(#F0B64B);
  rect(0,0,800,500);
  fill(#F0A94B);
  rect(0,20,800,260);
  fill(#F29A51);
  rect(0,80,800,260);
  fill(#F28C51);
  rect(0,160,800,260);
  //sun
  fill(#FFE571);
  ellipse(400,130,40,40);
  //clouds
  fill(#FFFFFF,100);
  ellipseMode(CENTER);
  ellipse(200,125,200,10); //2 clouds on the left
  ellipse(270,135,250,10);
  ellipse(565,105,250,10); ///2 clouds on the right
  ellipse(480,115,220,10);
  //water
  fill(#3AC6B2);
  rect(0,260,800,500);
  //land
  fill(#E8B91E,170);
  beginShape(); //land on the left
  vertex(0,250);
  bezierVertex(40,250,90,250,180,260);
  vertex(0,260);
  endShape();
  beginShape();
  vertex(800,250);
  bezierVertex(790,250,700,250,650,260);
  vertex(800,260);
  endShape();
}

void windsurfer(){
  x+=2.5; //x-value increases by 2.5 each frame
  //board
  fill(#188320);
  beginShape();
  vertex(160+x,296);
  bezierVertex(165+x,294,165+x,289,160+x,286);
  bezierVertex(130+x,301,90+x,301,40+x,301);
  bezierVertex(90+x,306,125+x,306,160+x,296);
  endShape();
  //trail of foam
  fill(#BFF0E7);
  arc(150+x,305,20,20,radians(180),radians(360));
  arc(135+x,305,10,10,radians(180),radians(360));
  arc(45+x,305,10,10,radians(180),radians(360));
  arc(35+x,305,7,7,radians(180),radians(360));
  arc(27+x,307,5,5,radians(180),radians(360));
  arc(20+x,305,5,5,radians(180),radians(360));
  //sail
  fill(#AFDB23);
  beginShape(); //post part of tail
  vertex(110+x,299); 
  bezierVertex(125+x,240,130+x,200,100+x,140);
  bezierVertex(125+x,200,120+x,240,100+x,300);
  endShape();
  //fabric part of tail
  fill(#A2E8A7,100);
  beginShape();
  vertex(102+x,297);
  bezierVertex(120+x,240,125+x,200,100+x,140);
  vertex(70+x,140);
  bezierVertex(65+x,185,50+x,220,20+x,250);
  endShape();
  //person
  fill(0);
  ellipse(85+x,270,10,10);//head
  triangle(75+x,275,95+x,275,84+x,285);//upper body
  triangle(84+x,280,75+x,300,84+x,295);//lower body/legs
  triangle(84+x,280,93+x,300,84+x,295);
}

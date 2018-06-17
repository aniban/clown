PImage pic;
int noseRadius = 30;
int noseX = 195;
int noseY = 250;

void setup(){
  size(400,600);
  pic = loadImage("./data/profile.JPG");
  textSize(30);
  noStroke();
}
void draw() {
  background(0);
  image(pic,0,0,400, 600);
  text("Press nose to blow",5,30);
  if (mousePressed){
    if (dist(mouseX,mouseY,noseX,noseY)<=noseRadius && noseRadius<100){
      noseRadius++;
    }
  }
  else {
    if (noseRadius>30) {
      noseRadius--;
    }
  }
   fill(255,0,0);
   ellipse(noseX,noseY,noseRadius*2,noseRadius*2);
}

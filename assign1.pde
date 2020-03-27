
PImage skyImg;
PImage groundImg;
PImage heartImg;
PImage groundhogImg;

int x;//solder
int y;//solder
int speedY;
PImage soldierImg;

PImage robotImg;//robot
int robotY;
float robotX;

float redLightX;//red light
float redLightY;
int redLightSpeed;

void setup() {
  
  size(640, 480, P2D);
  
  skyImg=loadImage("img/bg.jpg"); //sky
  groundImg=loadImage("img/soil.png");//ground
  heartImg=loadImage("img/life.png");//heart
  groundhogImg=loadImage("img/groundhog.png");//groundhog
  
  //solder
  soldierImg=loadImage("img/soldier.png");
  x=0;
  y=160;
  speedY=floor(random(4))*80;
  
  //robot
  robotImg=loadImage("img/robot.png");
  robotX=160+random(640-160-80);
  robotY=160;
  robotY+=floor(random(4))*80;
  
  //redLight
  redLightX=robotX+15;
  redLightY=robotY+37;
  redLightSpeed+=-2;

}



void draw() {

 image(skyImg,0,0);//sky
 
 
 image(groundImg,0,160);//ground
 
 
 image(heartImg,10,10);//heart1
 image(heartImg,80,10);//heart2
 image(heartImg,150,10);//heart3
 
 
 //grass
 fill(124,204,25);
 noStroke();
 rect(0,145,640,15);
 
 
 //groundhog
 image(groundhogImg,280,80);
 
 
 //sun
 stroke(255,255,0);
 strokeWeight(5);
 fill(253,184,19);
 circle(590,50,120);
 
 
 //solder
 image(soldierImg,x,y+speedY);//solder//set
 x++;//solder///how to move
 x%=640;//solder///how to move
  
 //red light
 redLightX+=redLightSpeed;
  
 fill(255,0,0);
 noStroke();
 rect(redLightX,redLightY,40,10,5);
  
  if(redLightX<=robotX+15-80*2){
        redLightX=robotX+15;
        redLightY=robotY+37;
    }
  
  
 //robot
 image(robotImg,robotX,robotY);//robot//set
 

}

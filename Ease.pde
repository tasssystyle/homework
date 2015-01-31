float t = 0;
float a = 0;
float b = 0;
float c = 0;
float d = 0;

void setup(){
 size(400,400);
 
}

void draw(){
  background(100);
  float aX = 0, aY = 0;
  float bX = 200, bY= 200;
  float cX = 400, cY= 250;
 
  float baX = (bX - aX)*a;
  float baY = (bY - aY)*a;
 
  float cbX = (cX - bX)*b;
  float cbY = (cY - bY)*b;
 
  float abX = (aX - bX)*c;
  float abY = (aY - bY)*c;
 
  float bcX = (bX - cX)*d;
  float bcY = (bY - cY)*d;

  t +=0.02f;

 if(t < 1){
 ellipse(baX,baY,10,10);
  a+=0.02f;
 } 
 if(t > 1){ 
    a=0; 
 } 
 if(t > 1 && t < 2){
   ellipse(cbX+200,cbY+200,10,10);
  b+=0.02f;
 } 
 if(t > 2){ 
    b=0; 
 } 
if(t > 2 && t < 3){
  ellipse(bcX+400,bcY+250,10,10);
  d+=0.02f;
 } 
 if(t > 3){ 
    d=0; 
 }
if(t > 3 && t < 4){
  ellipse(abX+200,abY+200,10,10);
  c+=0.02f;
 } 
 if(t > 4){ 
    c=0; 
 } 
 if(t > 4){
   t=0;
 }
}

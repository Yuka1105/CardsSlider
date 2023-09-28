import java.util.ArrayList;
import java.util.Collections;
PImage[] p =new PImage[18];
ArrayList<Integer> list = new ArrayList<Integer>();
PImage[] np =new PImage[7];
PImage back = new PImage();
PImage mozi = new PImage();
int[] x =new int[7];

void setup(){
  size(1400,800);
  colorMode(HSB,360,100,100,100);
  background(120,100,45);
  frameRate(30);
  p[0]=loadImage("../data/c1.png");
  p[1]=loadImage("../data/c3.png");
  p[2]=loadImage("../data/c9.png");
  p[3]=loadImage("../data/d8.png");
  p[4]=loadImage("../data/d10.png");
  p[5]=loadImage("../data/d13.png");
  p[6]=loadImage("../data/h4.png");
  p[7]=loadImage("../data/h10.png");
  p[8]=loadImage("../data/h12.png");
  p[9]=loadImage("../data/s1.png");
  p[10]=loadImage("../data/s2.png");
  p[11]=loadImage("../data/s3.png");
  p[12]=loadImage("../data/s4.png");
  p[13]=loadImage("../data/s5.png");
  p[14]=loadImage("../data/s8.png");
  p[16]=loadImage("../data/s9.png");
  p[17]=loadImage("../data/s11.png");
  back =loadImage("../data/back.png");
  mozi =loadImage("../data/mozi.png");
  for(int i = 0 ; i <= 17; i++) {
            list.add(i);
        }
  Collections.shuffle(list);

  for(int i=0; i<7; i++){
    np[i]=back;
    x[i]=100;
    
  }
}

void draw(){
  fill(120,100,45);
  rect(0,0,width,height);
  image(mozi,0,0);
  for(int i=0; i<7; i++){
  image(np[i],x[i],300);
  }
  
}

void keyPressed(){
  if(key=='q'||key=='w'||key=='e'||key=='r'||key=='t'||key=='y'||key=='u'||key=='i'||key=='o'||key=='p'){
    if(x[6]<1156){
    for(int i=0; i<7; i++){
      x[i]+=i*22;
    }
   }
}
     if(key=='a'||key=='s'||key=='d'||key=='f'||key=='g'||key=='h'||key=='j'||key=='k'||key=='l'){
       if(x[6]>100){
    for(int i=0; i<7; i++){
      x[i]-=i*22;
    }
   }
  }
  
  if(key=='0'){
   Collections.shuffle(list);
   for(int i=0; i<7; i++){
    np[i]=back;
    x[i]=100;
  }
 }
  
  if(key=='1'){
    if(np[0]==p[list.get(0)]){
  np[0]=back;
  }
 }
   if(key=='2'){
     if(np[1]==p[list.get(1)]){
  np[1]=back;
  }
 }
   if(key=='3'){
     if(np[2]==p[list.get(2)]){
  np[2]=back;
  }
 }
  if(key=='4'){
    if(np[3]==p[list.get(3)]){
  np[3]=back;
  }
 }
   if(key=='5'){
     if(np[4]==p[list.get(4)]){
  np[4]=back;
  }
 }
   if(key=='6'){
     if(np[5]==p[list.get(5)]){
  np[5]=back;
  }
 }
   if(key=='7'){
     if(np[6]==p[list.get(6)]){
  np[6]=back;
  }
 }
    if(key=='z'){
      if(np[0]==back){  
  np[0]=p[list.get(0)];
  }
 }
   if(key=='x'){
      if(np[1]==back){  
  np[1]=p[list.get(1)];
  }
 }
   if(key=='c'){
      if(np[2]==back){  
  np[2]=p[list.get(2)];
  }
 }
 if(key=='v'){
      if(np[3]==back){  
  np[3]=p[list.get(3)];
  }
 }
   if(key=='b'){
      if(np[4]==back){  
  np[4]=p[list.get(4)];
  }
 }
   if(key=='n'){
      if(np[5]==back){  
  np[5]=p[list.get(5)];
  }
 }
  if(key=='m'){
      if(np[6]==back){  
  np[6]=p[list.get(6)];
  }
 }
}

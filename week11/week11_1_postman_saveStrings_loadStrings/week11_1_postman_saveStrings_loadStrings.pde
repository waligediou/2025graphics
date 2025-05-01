// week11_1 postman saveStrings loadStrings
PImage postman, head, body;
float [] angle = new float[20];
int ID = 0;
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
}
void keyPressed(){
  if(key=='1') ID = 1;
  if(key=='1') ID = 2;
  if(key=='1') ID = 3;
  if(key=='1') ID = 4;
  if(key=='1') ID = 5;
  if(key=='1') ID = 6;
  if(key=='1') ID = 0;
 
  if(key=='s'){
    String now = "";
    for(int i=0; i<20; i++){
      now += " " + angle[i];
  }
  lines.add(now);
  String[]arr = new String[lines.size()];
  lines.toArray(arr);
  saveStrings("angles.txt",arr);
  }
  if(key=='r'){
    if(R==0){
      String[]file = loadStrings("angles.txt");
      if(file !=null){
        for(int i=0; i<file. length; i++){
          lines.add(file[i]);
        }
    }
}
if(R<lines.size()){
  float [] now = float(split( lines.get(R), ' '));
  for(int i=0; i<20; i++) angle[i] = now[i];
  R = (R+1) % lines.size();
  }
 }
}
int R = 0;
ArrayList<String>lies = new ArrayList<String>();
void setup(){
  size(560, 560);
   postman = loadImage("postman.png");
   head = loadImage("head.png");
   body = loadImage("body.png");
   uparm2 = loadImage("uparml.png");
   hand2 = loadImage("hand1.png");
   uparm2 = loadImage("uarm2.png");
   hand2 = loadImage("hand2.png");
}
void draw(){
  background(#FFFFF2);
  image(postman, 0, 0);
  fill(255, 0, 255, 128);
  rect(0, 0, 560, 560);
  pushMatrix();
  translate(+185, +261);
  //rotate(radians(mouseX));
  translate(-185, -261);
  image(uparml, 0, 0);
  pushMatrix();
    translate(+116, +265);
    rotate(radians(mouseX));
    translate(-116, -265);
  image(body, 0, 0);
  popMatrix();
  popMatrix();
}
  pushmatrix();
  translate(+185, +261);
  //rotate(radians(mouseX));
  translate(-185, -261);
  image(uparml, 0, 0);
  pushMatrix();
    translate(+116, +265);
    rotate(radians(mouseX));
    translate(-116, -265);
  image(body, 0, 0);
  popMatrix();
  popMatrix();
}
pushmatrix();
  translate(+185, +261);
  //rotate(radians(mouseX));
  translate(-185, -261);
  image(uparml, 0, 0);
  pushMatrix();
    translate(+116, +265);
    rotate(radians(mouseX));
    translate(-116, -265);
  image(body, 0, 0);
  popMatrix();
  popMatrix();
}

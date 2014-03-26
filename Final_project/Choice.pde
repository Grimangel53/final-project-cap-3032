class Choice{

 float SqTopX;
 float SqTopY;
 float SqBotX;
 float SqBotY;
 color c;
 
 Choice(float x1, float y1, float x2, float y2){
    SqTopX = x1;
    SqTopY = y1;
    SqBotX = x2;
    SqBotY = y2;
    c = color(random(255), 0, random(255));
 }
 
  void display(){
   fill(c);
   noStroke();
   rectMode(CORNERS);
   rect(SqTopX, SqTopY, SqBotX, SqBotY);
  }
  
  void mousePressed() {
   fill(c);
   rect(SqTopX, SqTopY, SqBotX, SqBotY);
  }
}

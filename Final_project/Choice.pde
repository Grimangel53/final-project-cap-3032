class Choice{
boolean hover;
float x;
float y;
float h;
float w;
float d;
 
 
 Choice(float x_, float y_, float w_, float h_){
   x = x_;
   y = y_;
   h = h_;
   w = w_;
 }
 
  void display(){
    this.hovering();
    if(hover == true){
      ellipse(x,y,(2*w),(2*h));
    }else{
      ellipse(x,y,w,h); 
    }
  }
  
  void hovering() {
    d = dist(mouseX, mouseY, x,y);
    if(d < (w/2) ){
    hover = true;
    }else{
     hover = false; 
    }
  }
}

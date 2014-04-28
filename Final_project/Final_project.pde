FullGraph visual;
Axes myAxes;

void setup() {
  size(500,500);
  visual = new FullGraph();
   myAxes = new Axes();
}

void draw(){
    background(255);
    myAxes.display();
    visual.display();
    
}



void keyPressed(){
  if(keyPressed){
   if(key == '1'){
    visual.setGraph(1);
    visual.display();
   } else if(key == '2'){
    visual.setGraph(2);
    visual.display();
   } else if(key == '3'){
    visual.setGraph(3);
    visual.display();
   } else if(key == '4'){
    visual.setGraph(4);
    visual.display();
   } else if(key == '5'){
     visual.setGraph(5);
     visual.display();
   }
  }
}




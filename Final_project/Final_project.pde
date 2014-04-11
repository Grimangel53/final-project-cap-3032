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
}



void mouseClicked(){
  
}

//INTEGRATE Pfont. 
//THIS IS FAIRLY IMPORTANT FOR THE DATA VISUALIZATION.
// Also integrate the squares.


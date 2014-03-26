FullGraph visual;

void setup() {
  size(540,580);
  visual = new FullGraph(2);
}

void draw(){
    background(255);
    visual.displayFullGraph();
}



void mouseClicked(){
  visual.displayFullGraph();
}

//INTEGRATE Pfont. 
//THIS IS FAIRLY IMPORTANT FOR THE DATA VISUALIZATION.
// Also integrate the squares.


class FullGraph{
Table dataWeb;
int rowCount;
int colCount;
Rank[] rank;
int currentIndex;

  FullGraph(){ 
    dataWeb = loadTable("Web Index Ranks.csv", "header");
    rowCount = dataWeb.getRowCount();
    colCount = dataWeb.getColumnCount();
    println(rowCount);
    println(colCount);
    currentIndex = 0;
      
  }
  
  void display() {
    //displayTitle();
    displayPoints();
  }
 
 void displayTitle(){
   
 }
  
  void displayPoints() {
    noStroke();
    fill(255,0,0);
    int inset = myAxes.inset;
    float spacing = myAxes.spacing;
    for (int i = 1; i < 65; i++) {
      ellipse(i * spacing + inset, height-inset, 5,5);
    }
  }
}

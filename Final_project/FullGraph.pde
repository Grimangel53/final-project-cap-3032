class FullGraph{
Table dataWeb;
int rowCount;
int colCount;
Rank[] rank;
int currentgraph;
String name;
int score1;
int score2;
int score3;
int score4;
int score5;
String smallname;
Choice[] points;

  FullGraph(){ 
    dataWeb = loadTable("Web Index Ranks.csv", "header");
    rowCount = dataWeb.getRowCount();
    colCount = dataWeb.getColumnCount();
    println(rowCount);
    println(colCount);
    currentgraph = 1;
    rank = new Rank[rowCount];
    points = new Choice[rowCount];
    
    for(int i = 0; i < rowCount; i++){
     TableRow row = dataWeb.getRow(i);
     name = row.getString("Country");
     score1 = row.getInt("Composite");
     score2 = row.getInt("Universal Access");
     score3 = row.getInt("Free and Open");
     score4 = row.getInt("Relevant Content");
     score5 = row.getInt("Empowerment");
     smallname = row.getString("Abbreviation");
     rank[i] = new Rank(name, score1, score2, score3, score4, score5, smallname);
    }
      
  }
  
  void display() {
    displayPoints();
  }
 
  
  void displayPoints() {
    noStroke();
    fill(255,0,0);
    int inset = myAxes.inset;
    float spacing = myAxes.spacing;
    int space = (height-(2*inset))/81;
    for (int i = 1; i < 81; i++) {
      points[i] = new Choice(i * spacing + inset, inset + (((rank[i].scores[currentgraph-1])-1)*space), 5,5);
      points[i].display();
    }
  }
  
  void setGraph(int n){
   currentgraph = n; 
  }
}

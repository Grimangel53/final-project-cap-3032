class FullGraph{

int cross;
int b;
int mod;
float x1;
float y1;
float x2;
float y2;
Choice[] data;

FullGraph(int a){
    cross = a^2;
    b = a;
    data = new Choice[cross];
    x1 = 120;
    x2 = 270;
    y1 = 160;
    y2 = 310;
    for(int i = 0; i < data.length; i++){
      mod = i%b;
      if(i == 0) {
        data[i] = new Choice(x1,y1,x2,y2);
      } else if(mod == 0){
        y1 = y2;
        y2 += 300;
        data[i] = new Choice(x1, y1, x2, y2);
      } else {
        x1 = x2;
        x2 += 150;
        data[i] = new Choice(x1,y1,x2,y2);
      }
    } 
}

void displayFullGraph(){
  for(int i = 0; i < data.length; i++){
      data[i].display();
    }  
}
}

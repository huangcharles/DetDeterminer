
int [][]arr=new int[3][3];
DetDeterminer d=new DetDeterminer(arr);
void setup(){
  
  int c=10;
  for(int i=0; i<arr.length;i++){
    for(int j=0; j<arr.length; j++){
      arr[i][j]=c;
      c--;
    }
    
  }
  printArray();
  println(d.findDet());
  println(d.isInvertible());
}


void draw(){
  
}

void printArray(){
  for(int i=0; i<arr.length;i++){
    for(int j=0; j<arr.length; j++){
      println(arr[i][j]);
    }
  }
}

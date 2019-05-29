
int [][]arr=new int[3][3];
DetDeterminer d=new DetDeterminer(arr);
void setup(){
  
  arr[0][0]=-423;
  arr[0][1]=-56;
  arr[0][2]=89;
  arr[1][0]=26;
  arr[1][1]=22;
  arr[1][2]=13;
  arr[2][0]=10;
  arr[2][1]=4;
  arr[2][2]=-834;
  
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

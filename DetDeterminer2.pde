
int [][]arr=new int[3][3];
int[] ansArr=new int[3];

DetDeterminer d=new DetDeterminer(arr, ansArr);
void setup() {

  arr[0][0]=7;
  arr[0][1]=7;
  arr[0][2]=-4;
  arr[1][0]=9;
  arr[1][1]=1;
  arr[1][2]=6;
  arr[2][0]=2;
  arr[2][1]=-3;
  arr[2][2]=-7;

  ansArr[0]=8;
  ansArr[1]=-4;
  ansArr[2]=5;

  println(d.findDet());
  println(d.isInvertible());
  println(d.findDetX());
  println(d.findDetY());
  println(d.findDetZ());
  println(d.findX());
  println(d.findY());
  println(d.findZ());
}

public class DetDeterminer {
  private int[][] A;
  private int dim;
  private int detA;
  private int numPatt;
  private int signP;
  private int prodP;
  private int coeff;
  private boolean invertible; 
  private ArrayList<ArrayList<ArrayList<Integer>>> Patterns = new ArrayList<ArrayList<ArrayList<Integer>>>();

  public DetDeterminer(int[][] matrix) {
    A=matrix;
    // dim=A.length;
    dim=3;
    // numPatt=1;
    detA=0;
    invertible=true;
    coeff=1;
  }

  public int findDet() {
    for (int i=0; i<dim; i++){
      ArrayList<Integer> Aprime=new ArrayList<Integer>();
      if (i%2==0) {
        coeff=A[0][i];
      } else {
        coeff=-A[0][i];
      }
      for (int j=1; j<dim; j++) {
        for (int k=0; k<dim; k++) {
          if (k!=i) {
            Aprime.add(A[j][k]);
          }
        }
      }
      detA=detA+coeff*(Aprime.get(0)*(Aprime.get(2)-Aprime.get(1)*Aprime.get(3)));
    }
    return detA;
  }

  //public void numPatterns(){
  //  int counter = dim;
  //  while (counter>0){
  //    numPatt*=counter;
  //    counter--;
  //  }
  //}

  //public void findPatterns(){
  //  int PatternNumber=0;
  //  ArrayList<ArrayList<Integer>> pattern = new ArrayList<ArrayList<Integer>>();

  //  while(PatternNumber<numPatt){
  //    int EntryNumber=0;
  //    while(EntryNumber<dim){

  //      ArrayList<Integer> usedI = new ArrayList<Integer>(); //stores used up col indicies of this pattern

  //      //creates an entry and adds it to the pattern list
  //      for(int i=0; i<dim; i++){
  //        if(usedI.indexOf(i)<0){
  //          ArrayList<Integer> entry = new ArrayList<Integer>(); //new "entry" for each entry

  //          entry.add(A[EntryNumber][i]);
  //          entry.add(EntryNumber);
  //          entry.add(i);
  //          usedI.add(i);

  //          pattern.add(entry);
  //        }
  //      }
  //      EntryNumber++;
  //    }
  //    numPatt++;
  //   }
  //}



  //public void findSign(){
  //}
  //public void findProd(){
  //}
  //public void findDet(){
  //}

  public boolean isInvertible() {
    if (detA==0) {
      invertible=false;
    }
    return invertible;
  }
}

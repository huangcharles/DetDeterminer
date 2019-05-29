public class DetDeterminer {
  private int[][] A;
  private int dim;
  private int detA;
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

  public String findDet() {
    for (int i=0; i<dim; i++) {
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
      detA=detA+coeff*(Aprime.get(0)*Aprime.get(3)-Aprime.get(1)*Aprime.get(2));
    }
    return "The determinant of the matrix is: "+detA;
  }

  public String isInvertible() {
    if (detA==0) {
      invertible=false;
    }
    if (invertible) {
      return "The inputted matrix is invertible.";
    } else {
      return "The inputted matrix is not invertible.";
    }
  }
}
  public String solveCramer(){
  }

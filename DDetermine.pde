public class DetDeterminer {

  private int[][] A;
  private int dim;
  private int detA;
  private int coeff;
  private boolean invertible; 
  private int dx;
  private int cffx;
  private int[][] Ax=new int[3][3];
  private int dy;
  private int cffy;
  private int[][] Ay=new int[3][3];
  private int dz;
  private int cffz;
  private int[][] Az=new int[3][3];
  private int[] solutions;

  public DetDeterminer(int[][] matrix, int[] sol) {
    A=matrix;
    // dim=A.length;
    dim=3;
    // numPatt=1;
    detA=0;
    invertible=true;
    coeff=1;
    dx=0;
    cffx=1;
    Ax=new int[3][3];
    solutions = sol;
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

  public String findDetX() {
    for (int i=0; i<dim; i++) {
      for (int j=0; j<dim; j++) {
        if (j==0) {
          Ax[i][j]=solutions[i];
        } else {
          Ax[i][j]=A[i][j];
        }
      }
    }

    for (int i=0; i<dim; i++) {
      ArrayList<Integer> Aprime=new ArrayList<Integer>();
      if (i%2==0) {
        cffx=Ax[0][i];
      } else {
        cffx=-Ax[0][i];
      }
      for (int j=1; j<dim; j++) {
        for (int k=0; k<dim; k++) {
          if (k!=i) {
            Aprime.add(Ax[j][k]);
          }
        }
      }
      dx=dx+cffx*(Aprime.get(0)*Aprime.get(3)-Aprime.get(1)*Aprime.get(2));
    }
    return "det(X)="+dx;
  }
  public String findDetY() {
    for (int i=0; i<dim; i++) {
      for (int j=0; j<dim; j++) {
        if (j==1) {
          Ay[i][j]=solutions[i];
        } else {
          Ay[i][j]=A[i][j];
        }
      }
    }

    for (int i=0; i<dim; i++) {
      ArrayList<Integer> Aprime=new ArrayList<Integer>();
      if (i%2==0) {
        cffy=Ay[0][i];
      } else {
        cffy=-Ay[0][i];
      }
      for (int j=1; j<dim; j++) {
        for (int k=0; k<dim; k++) {
          if (k!=i) {
            Aprime.add(Ay[j][k]);
          }
        }
      }
      dy=dy+cffy*(Aprime.get(0)*Aprime.get(3)-Aprime.get(1)*Aprime.get(2));
    }
    return "det(Y)="+dy;
  }
  public String findDetZ() {
    for (int i=0; i<dim; i++) {
      for (int j=0; j<dim; j++) {
        if (j==2) {
          Az[i][j]=solutions[i];
        } else {
          Az[i][j]=A[i][j];
        }
      }
    }

    for (int i=0; i<dim; i++) {
      ArrayList<Integer> Aprime=new ArrayList<Integer>();
      if (i%2==0) {
        cffz=Az[0][i];
      } else {
        cffz=-Az[0][i];
      }
      for (int j=1; j<dim; j++) {
        for (int k=0; k<dim; k++) {
          if (k!=i) {
            Aprime.add(Az[j][k]);
          }
        }
      }
      dz=dz+cffz*(Aprime.get(0)*Aprime.get(3)-Aprime.get(1)*Aprime.get(2));
    }
    return "det(Z)="+dz;
  }
  public String findX() {
    double x=1.0*dx/detA;
    return "x="+x;
  }
  public String findY() {
    double y=1.0*dy/detA;
    return "y="+y;
  }
  public String findZ() {
    double z=1.0*dz/detA;
    return "z="+z;
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

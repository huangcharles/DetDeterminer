# DetDeterminer

# DeterminantDeterminer

This project calculates the determinant of a 3x3 matrix and then identify if the matrix is invertible or not. The determinant is an indicator of whether or not the matrix is invertible or not: the matrix is invertible if and only if the determinant equals 0. 

Furthermore, this project applies Cramer's Rule to solve simultaneous equations with 3 variables. By inputting the augmented matrix and the answer matrix, by using determinants, the solution can be found. Cramer's rule invokes the determination of 3 determinants in addition to the determinant of the original augmented matrix. For more on Cramer's Rule, see this link: http://mathworld.wolfram.com/CramersRule.html.

### Difficulties or opportunities you encountered along the way.

The toughest part was, perhaps surprisingy, implemeting Cramer's rule. Several approaches to implementing the previously written method to find a determinant were tested, but the best solution given the existing code turned out to be simply copying+pasting the code and adjusting the usage of private variables.  

### Most interesting piece of your code and explanation for what it does.

```Java
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
```
This is the core code of the class which finds the determinant of the inputted augmented matrix. This method uses the cofactor expansion algorithm for finding the determinant of any square matrix by expanding along the first row. For more on cofactor expansion, see the following link: http://mathworld.wolfram.com/DeterminantExpansionbyMinors.html.

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Charles Huang** 

## Acknowledgments

* Inspired by difficult math homework
* Thank you to Mr. Ryan Mahoney, mathematics teacher at UMTYMP and the Blake School
* Thank you to Dr. Thomas Reinartz, computer science teacher at Rosemount High School
* Thank you to multiple classmates for support and assistance in resolving errors

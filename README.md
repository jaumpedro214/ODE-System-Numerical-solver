# ODE System - Numerical Solver
 Solve Ordinary differential equations systems using Runge-Kutta

## Dependences
  * Codes made in Fortran 90
  * gfortran Compiler
  * Plot solution using Matlab/Octave
  
## How to use
### Running code
  The code runs in Fortran 90, you will need a fortran compiler, such as gfortran.
  The problem conditions are changed in code, then you'll need to compile every change:
  
  ```
    gfortran ode_solver_main.f90 -o <your_exe_name>
  ```
  
  Then, run:
  
  * On Windows
  ```
    your_exe_name.exe
  ```
  * On Linux 
  ```
    ./your_exe_name.out
  ```
  
 After this, the code will generate three .out files.
 * mash_info.out : 
 Contain the points of domain discretization. 
 * output_solution.out :
 Contain the solution for each point
 
 ## Mathematical Model
 We solve a Diferential Equation System using 4 order Runge-Kutta method  
 
 
 ![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Bcases%7D%20y_1%5E%5Cprime%20%3D%20f_1%28x%2Cy_1%2Cy_2%2C%20%5C%20%5Cdots%20%5C%20%2C%20y_n%29%2C%20%26%20y_1%280%29%20%3D%20y_%7B1%2C0%7D%20%5C%5C%20y_2%5E%5Cprime%20%3D%20f_2%28x%2Cy_1%2Cy_2%2C%20%5C%20%5Cdots%20%5C%20%2C%20y_n%29%2C%20%26%20y_2%280%29%20%3D%20y_%7B2%2C0%7D%20%5C%5C%20y_3%5E%5Cprime%20%3D%20f_3%28x%2Cy_1%2Cy_2%2C%20%5C%20%5Cdots%20%5C%20%2C%20y_n%29%2C%20%26%20y_3%280%29%20%3D%20y_%7B3%2C0%7D%20%5C%5C%20%5C%20%5Cvdots%20%5C%5C%20y_n%5E%5Cprime%20%3D%20f_n%28x%2Cy_1%2Cy_2%2C%20%5C%20%5Cdots%20%5C%20%2C%20y_n%29%2C%20%26%20y_n%280%29%20%3D%20y_%7Bn%2C0%7D%20%5C%5C%20%5Cend%7Bcases%7D)
 

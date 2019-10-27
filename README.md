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
 
  ### Plotting solution
You will need Matlab or Octave to run the .m code. Once with Matlab/Octave opened, just run the code with execute button and watch the solution change in time.
 
 ## Mathematical Model
 We solve a Diferential Equation System using 4 order Runge-Kutta method
 
 
 ![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Bcases%7D%20y_1%5E%5Cprime%20%3D%20f_1%28x%2Cy_1%2Cy_2%2C%20%5C%20%5Cdots%20%5C%20%2C%20y_n%29%2C%20%26%20y_1%280%29%20%3D%20y_%7B1%2C0%7D%20%5C%5C%20y_2%5E%5Cprime%20%3D%20f_2%28x%2Cy_1%2Cy_2%2C%20%5C%20%5Cdots%20%5C%20%2C%20y_n%29%2C%20%26%20y_2%280%29%20%3D%20y_%7B2%2C0%7D%20%5C%5C%20y_3%5E%5Cprime%20%3D%20f_3%28x%2Cy_1%2Cy_2%2C%20%5C%20%5Cdots%20%5C%20%2C%20y_n%29%2C%20%26%20y_3%280%29%20%3D%20y_%7B3%2C0%7D%20%5C%5C%20%5C%20%5Cvdots%20%5C%5C%20y_n%5E%5Cprime%20%3D%20f_n%28x%2Cy_1%2Cy_2%2C%20%5C%20%5Cdots%20%5C%20%2C%20y_n%29%2C%20%26%20y_n%280%29%20%3D%20y_%7Bn%2C0%7D%20%5C%5C%20%5Cend%7Bcases%7D)
 
## Varaibles in code
  
   
   To set the interval that solution will be calculated
   ```
   intr_x = 0.400
   ```
   The number of points that the solution will be calculated
   ```
   nodes_number = 1000
   ```

   To set the system, follow the steps:
  
   * First, you'll need set the _system size_
   
   
   Example:
   ```
   !============================ System Size ============================!
   system_size = 3
   ```
   
   * Set the initial system condition
   
   
   Example:
   
   
   ```
   !======================== Initial conditions ==========================!
   old_sol(1) = 5.000
   old_sol(2) = 1.000
   old_sol(3) = -3.1415
   ```
   
   
   * Setting the functions
   
   
   Example:
   
   
   ![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Bcases%7D%20%7By_1%7D%5E%5Cprime%20%3D%20f_1%20%3D%203x%20-%20y_1%5C%5C%20%7By_1%7D%5E%5Cprime%20%3D%20f_2%20%3D%20y_2%20&plus;%203y_1%20-%20y_3%5C%5C%20%7By_1%7D%5E%5Cprime%20%3D%20f_3%20%3D%20ln%28x%29%20-%20y_3%20&plus;%7By_2%7D%5E2%5C%5C%20%5Cend%7Bcases%7D)
   
   ```
   function f(x, u) result( f_res )
        real(8), intent(in)  :: x
        real(8), intent(in), dimension(:) :: u
        real(8), dimension( size(u) ) :: f_res

        !===== function =====!
        f_res(1) = 3*x - u(1)
        f_res(2) = u(2) + 3*u(1) - u(3)
        f_res(3) = log(x) - u(3) + (u(2))**2

    end function f
   ```
   
   ## Solution Examples
   
   
   ### Population Dynamics
   ![](https://github.com/jaumpedro214/ODE-System-Numerical-solver/blob/master/Images/PedatorPrey_1.png?raw=true)
   ![](https://github.com/jaumpedro214/ODE-System-Numerical-solver/blob/master/Images/PedatorPrey_2.png?raw=true)
   ![](https://github.com/jaumpedro214/ODE-System-Numerical-solver/blob/master/Images/pop_dynamics_phase.png?raw=true)
   ### Vertical Spring-Mass system
   
   
   System with 2 springs coupled with 2 massive bodies
   ![](https://github.com/jaumpedro214/ODE-System-Numerical-solver/blob/master/Images/SpringSystem_1.png?raw=true)
   
   With Damping
   ![](https://github.com/jaumpedro214/ODE-System-Numerical-solver/blob/master/Images/SpringSystem_2.png?raw=true)

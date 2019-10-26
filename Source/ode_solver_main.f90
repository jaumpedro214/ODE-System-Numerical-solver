program ode_solver

    implicit none
    
    integer system_size
    integer nodes_number
    integer delta_x
    integer intr_x

    real(8), dimension(4) :: k
    real(8), dimension(:), allocatable ::  old_sol, new_sol
    
    system_size = 3
    allocate( old_sol(system_size) )
    allocate( new_sol(system_size) )

    intr_x = 1.000
    nodes_number = 10
    delta_x = intr_x/(nodes_number-1)
    


    deallocate(old_sol)
    deallocate(new_sol)

    contains

    function f(x, u) result( f_res )
        implicit none
        real(8), intent(in)  :: x
        real(8), intent(in), dimension(:) :: u
        real(8), dimension( size(u) ) :: f_res

    end function f

end program ode_solver

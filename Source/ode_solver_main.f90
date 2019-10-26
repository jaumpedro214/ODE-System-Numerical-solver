program ode_solver

    implicit none
    
    integer output_solution, plot_info, mash_info

    integer system_size
    integer nodes_number
    real(8) delta_x
    real(8) intr_x

    real(8), dimension(:,:), allocatable :: k
    real(8), dimension(:), allocatable ::  old_sol, new_sol

    integer i, j
    real(8) atual_x
    
    output_solution = 80
    open( unit = output_solution, file = "output_solution.out" )
    plot_info = 81
    open( unit = plot_info, file = "plot_info.out" )
    mash_info = 82
    open( unit = mash_info, file = "mash_info.out" )

    system_size = 2
    allocate( k(4,system_size) )
    allocate( old_sol(system_size) )
    allocate( new_sol(system_size) )

    intr_x = 1.000
    nodes_number = 501
    delta_x = intr_x/(nodes_number-1)

    old_sol(1) = 40
    old_sol(2) = 100

    write(output_solution,*) old_sol

    write(mash_info,*) 0
    do i = 2, nodes_number
        atual_x = delta_x*(i-1)
        k(1,:) = f( atual_x, old_sol )
        k(2,:) = f( atual_x + delta_x/2, old_sol + (delta_x/2)*k(1,:) )
        k(3,:) = f( atual_x + delta_x/2, old_sol + (delta_x/2)*k(2,:) )
        k(4,:) = f( atual_x + delta_x, old_sol + delta_x*k(3,:) )

        new_sol = old_sol + (delta_x/6.00)*( k(1,:) + 2*k(2,:) + 2*k(3,:) + k(4,:) )
        
        write(output_solution,*) new_sol
        write(mash_info,*) atual_x

        old_sol = new_sol
    enddo

    deallocate( k )
    deallocate(old_sol)
    deallocate(new_sol)

    contains

    function f(x, u) result( f_res )
        real(8), intent(in)  :: x
        real(8), intent(in), dimension(:) :: u
        real(8), dimension( size(u) ) :: f_res
        
        f_res(1) = u(1)*(1 - u(2)) 
        f_res(2) = u(2)*(2*u(1) - 4)
    end function f

end program ode_solver

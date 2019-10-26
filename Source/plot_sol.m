sol_matrix = load('output_solution.out');
mash = load('mash_info.out');

system_size = size( sol_matrix(1,:) )(2);
plot(mash,sol_matrix)
sol_matrix = load('output_solution.out');
mash = load('mash_info.out');

system_size = size( sol_matrix(1,:) )(2);
plot(mash,sol_matrix)

%plot(sol_matrix(:,1),sol_matrix(:,2))
%hold on
%plot(sol_matrix(1,1),sol_matrix(1,2),'x',"linewidth", 2)
%title("Population dynamics - Phase Plot")
%legend("Curve plot","Initial Condition")
%xlabel("Prey Population")
%ylabel("Predator Population")
%hold off
%print("pop_dynamics_phase","-dpng")
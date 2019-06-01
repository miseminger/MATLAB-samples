clear all

m = 10;
A = [montyhall(m); montyhall(m^2); montyhall(m^3); montyhall(m^4)];

disp(' ')
disp(sprintf('   Proportion of wins'))
disp(sprintf('   (n = 10, 10^2, 10^3, 10^4)'))
disp(' ')
disp(sprintf('   stay      switch    both'))
disp(A)


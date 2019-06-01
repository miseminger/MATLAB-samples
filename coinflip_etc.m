function Y = nextStepEhr(X,M)

U = unidrnd(2) - 1;
V = unifrnd(0,1);

if U == 0
Y = X;
elseif and(U == 1,V <= X/M)
Y = X-1;
else
Y = X + 1;
end
 
 	
 	
clear all
close all

N = 60000
#burn-in for a system with 1000 coins, initially all tails
A = zeros(1,10000);
A(1) = nextStepEhr(0,1000);

for j = 2:10000
    A(j) = nextStepEhr(A(j-1),1000);
end	

#next 60,000 steps
B = zeros(1,N);
B(1) = nextStepEhr(A(10000),1000);

for j = 2:N
    B(j) = nextStepEhr(B(j-1),1000);
end	

#calculate proportion of time spent in each state

S = zeros(1,1001);

for j = 1:1001
    S(j) = sum(B==(j-1))/N;
end

#plot the proportion of time against the states
X = 0:1000;
bar(X,S)
title("Proportion of Time Spent in Each State");
xlabel("Number of Heads")
ylabel("Proportion of Time Periods")
set(gca, 'XTick', [250:100:750])

	
		
function m = matrixEhr(M)
	
A = 0.5*eye(M+1);

for i = 1:M
A(i,i+1) = (M - i + 1)/(2*M);
A(i+1,i) = (i)/(2*M);
end

m = A;



clear all
close all

A = matrixEhr(20);
mu = zeros(1,21);
mu(1) = 1;

F = zeros(60,20);
for i = 1:60
    for j = 1:20
        F(i,j) = (mu*A**i)(j);
    end
end

mesh(F)
title("6c,mu");
xlabel("x")
ylabel("k")
zlabel("mu*A**k(x)")



clear all
close all

A = matrixEhr(20);
nu = zeros(1,21);
nu(1) = 1/2;
nu(21) = 1/2;

F = zeros(60,20);
for i = 1:60
    for j = 1:20
        F(i,j) = (nu*A**i)(j);
    end
end

mesh(F)
title("6c,nu");
xlabel("x")
ylabel("k")
zlabel("nu*A**k(x)")

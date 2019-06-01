clear all

Binomial = binocdf(4,380,0.03)
#probability that at most 4 out of 380 people miss the flight
Poisson = poisscdf(4,380*0.03)
#probability that at most 4 out of 380 people miss the flight

B = binornd(380, 0.03, 1, 50000);
y = zeros(1,4);

for i = 1:5
    y(i) = sum(B==(i-1));
end

s = cumsum(y);
t = s(5);
pr = t/50000

for n = 1:50000
    m = B(1:n);
    for o = 1:5
        z(o) = sum(m==(o-1));
    end

    w = cumsum(z);
    q(n) = w(5);
end

v = q./n;

n = 1:50000;
plot(n,v(1:end),'r')
title('Question 6') 
xlabel('Number of trials')
ylabel('Proportion of overbookings')



Results:

>>>Binomial =  0.010648
Poisson =  0.011509
pr =  0.010640
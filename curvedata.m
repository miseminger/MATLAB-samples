clear all
close all

n = 40000;
X = (unidrnd(1000,1,n) - 1)/1000;
Y = exp(-(X.^2)/2)/((2*pi)^0.5);
Z = cumsum(Y)(n);
In = Z/n



Results from 3 runs:

>>>In =  0.34133
>>>In =  0.34151
>>>In =  0.34181





clear all
close all

n = 40000;

#form X and Y coordinates for n numbers
X = (unidrnd(1000,1,n) - 1)/1000;
Y = (unidrnd(1000,1,n) - 1)/1000;

#make points for the curve z=f(x)
Z = exp(-(X.^2)/2)/((2*pi)^0.5);

#find out which numbers are below the curve, ie., which have Y(i) <= Z(i)
A = Y <= Z;

#find what proportion of numbers fits this criterion
prop = cumsum(A)(n)/n



Results from 3 runs:

>>>prop =  0.34208
>>>prop =  0.34305
>>>prop =  0.34015
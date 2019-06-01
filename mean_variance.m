clear all
close all

#load data sets

load /home/madeline/Downloads/gasquantities.mat

load /home/madeline/Downloads/gasquantities2.mat

g1 = gasquantities;
g2 = gasquantities2;

#compute sample mean
n=10000;
X1 = cumsum(g1)(n)/n
X2 = cumsum(g2)(n)/n

#compute sample variance

S1 = (1/(n-1))*cumsum((g1 - X1).^2)(n)
S2 = (1/(n-1))*cumsum((g2 - X2).^2)(n)

#CIs:

a = tinv((1-0.05/2),(n-1))
alpha1 = a*S1^0.5/(n^0.5)
alpha2 = a*S2^0.5/(n^0.5)


Results:

>>>X1 =  0.99987
X2 =  0.99871
S1 =  0.0025106
S2 =  0.0024659
a =  1.9602
alpha1 =    9.8218e-04
alpha2 =    9.7339e-04
>>>
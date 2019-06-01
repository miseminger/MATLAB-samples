clear all
close all

X = randp(100,1,10000); #generate a vector X containing the number of earthquakes that occur in each period for 10,000 100-decade periods.

figure(1);
hist(X, [50:150]) #plot a histogram of the number of time periods containing a given number of earthquakes (from 50 to 150 earthquakes/time period)
title("Histogram of Earthquake Occurences Per Time Period");
xlabel("Number of Earthquakes")
ylabel("Number of Time Periods")
set(gca, 'XTick', [50:10:150])
#{
A = X==100;
M = cumsum(A);
i = 1:length(M);
P = M./i;

figure(2);
plot(i,P)
title("Plot of M(i) vs. i")
xlabel("i")
ylabel("M(i)/i")
#}


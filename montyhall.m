function m = montyhall(n)
#montyhall(n) calculates the proportion of wins for each of three strategies, with n trials for each strategy.  In order, the strategies are: always stay, always switch, and switch/stay uniformly at random.

C = unidrnd(3,1,n);     #represents location of car

#make C into a 3xn matrix J for later
for i = 1:3
     for j = 1:n
          J(i,j) = C(j);     
     end
end

S = unidrnd(2,1,n) + 1;     #vector of length n containing a uniformly random distribution of 2's and 3's

#change S so that S(j) represents the door you can switch to during trial j
for j = 1:n
     if C(j) == 1    #if the car is behind Door 1, you can switch to either Door 2 or Door 3 uniformly at random
         S(j) = S(j);
     else               #if a goat is behind Door I, the host reveals the other goat, and you can switch to the door with the car
         S(j) = C(j);
     end
end

#D(i,j) represents the door you choose to open using strategy i in trial j
for i = 1:3
     for j = 1:n
              D(1,j) = 1;  #stay
              D(2,j) = S(j);  #switch
              ri = randi(2);  #switch/stay uniformly at random
              if ri == 2
                   D(3,j) = 1;   
              else
                   D(3,j) = S(j);
              end
     end
end

W = (D==J);     #form a matrix W with 1's for wins and 0's for losses
W = W';     #need to take the transpose of W to use sum(W)

m = sum(W)/n;  #produces a vector containing the proportion of wins for each strategy: [stay, switch, both]
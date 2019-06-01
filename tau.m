function z = tau(d,t)

X = zeros(d,t);

for j = 1:t
     	  ri = randi([0,2*d]);
     	  if ri == 1
     	  	X(1,j) = 1;
     	 elseif ri == 2
     	  	X(1,j) = -1;
     	  elseif ri == 3
     		X(d,j) = 1;
     	  else
     		X(d,j) = -1;
end
end

S = cumsum(X,2)

M = ones(1,t);
for i = 1:d
for j = 1:t
if S(1,j) == 0;
	M(j) = sum(S)(j);
	else M(j) = 1;		
end
end
end

Q =M;
f = find(~Q);

e = sum(f);

if e == 0
	z = Inf
else
	z = f(1)
end

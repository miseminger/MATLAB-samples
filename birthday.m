function d = birthday(n)
	
#BIRTHDAY(N)    Makes an array of birthdays, filters unique values, and returns "1" if the there is at least one pair of values in the array and "0" otherwise.

a = unidrnd(365,1,n);
b = unique(a);
c = numel(b);

if c == n
    d = 0;
else
    d = 1;
end

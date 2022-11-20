x = [1 1.5 2.0 2.5];
 y = [2.7183 4.4817 7.3891 12.1825];
 n=length(x);
 p=2.25;

 n = size(x,1);
 if n == 1
    n = size(x,2);
 end
 for i = 1:n
    D(i,1) = y(i);
 end
 for i = 2:n
    for j = 2:i
       D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
    end
 end
 fx0 = D(n,n);
 for i = n-1:-1:1
    fx0 = fx0*(p-x(i)) + D(i,i);
 end
fx0
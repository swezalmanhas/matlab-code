f=@(x)(cos(x)^2);
a=input("Enter the lower val ");
b=input("Enter the upper val ");

n=input("Enter the subintervals");

h=(b-a)/n;
sum=0;
for i=1:n-1
    sum=sum+f(a+i*h);
end
sum=2*sum+f(a)+f(b);
ans=(h/2)*(sum)
f=@(x)(cos(x)^2);
a=input("Enter the lower limit ");
b=input("Enter the upper limit ");
n=input("Enter the sub-intervals ");


h=(b-a)/n;

sum=0;

for i=1:n-1
    if rem(i,2)==0
        sum=sum+2*f(a+i*h);
    else
        sum=sum+4*f(a+i*h);
    end
end

sum=sum+f(a)+f(b);
ans=sum*(h/3);

ans
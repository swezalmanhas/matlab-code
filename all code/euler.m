
%euler method code
f=@(t,y)(-y+2*cos(t));

t0=input("Initial value of x");
y0=input("initial value of y");
h=input("mesh size");
b=input("Enter the value to find value");

n=(b-t0)/h;

for i=1:n
    
    k1=h*f(t0,y0);
    k2=h*f(t0+h,y0+k1);
 
    y1=y0+((k1+k2)/2);

    y0=y1;
    t0=t0+h;
    
end

y1

f=@(t,y)(-y+2*cos(t));
t0=input("Enter the initial value of x : ");
y0=input("Enter the initial value of y : ");
h=input("Mesh size ");
b=input("final value of x ");

n=(b-t0)/h;

for i=1:n
    
    k1=h*f(t0,y0);
    k2=h*f(t0+h/2,k1/2+y0);
    k3=h*f(t0+h/2,k2/2+y0);
    k4=h*f(t0+h,y0+k3);

    y1=y0+(k1+k4+2*(k3+k3))/6;

    y0=y1;
    t0=t0+h;

end
y1
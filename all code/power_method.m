A=input("enter matrix elements: ");
tol=input("enter the tolerance: ");
x=input("enter initial vector: ");
N=input("enter number of iterations : ");
y=A*x;
K=max(y);
for i=1:N
    y=A*x;
    n=norm(y,"inf");
    x=y/n;
    K(i)=n;
    if(i>1)
        if(abs(K(i)-K(i-1)))<(tol)
            K(i)
            x
            break;
        end
    end
end
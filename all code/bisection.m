f=@(x)(x^3+4*x^2-10);
a=1;
b=2;
tol=0.001;
c=(a+b)/2;
if(f(a)*f(b)>0)
    fprintf("Wrong Input");
else
    while(abs(a-b)>tol)
        c=(a+b)/2;
        if(f(a)*f(c)<0)
            b=c;
            c=(a+b)/2;
        elseif(f(b)*f(c)<0)
            a=c;
            c=(a+b)/2;
        elseif(f(c)==0)
            break;
        end
    end
end
fprintf("Square root is %f",c);
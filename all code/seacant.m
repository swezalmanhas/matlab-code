
f=@(x)(x^2 - 17);
e=10^(-5);
N=input('enter iterations:');
x0=input('enter initial approx:');
x1=input('enter second approx:');
for i=1:N
    
    x2=x1-(f(x1)*((x1-x0)/(f(x1)-f(x0))));
    if(abs(x2-x1)<=e)
        fprintf('root is %f',x2);
        f(x2)
        break;
    else
        x0=x1;
        x1=x2;
    end
    
end

    
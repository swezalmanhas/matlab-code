clc;
clear;

f=@(x)(x^3+3*x-10);
df=@(x)(3*x^2+3);

x0=0.5;
n=12;
e=0.001;

for i=1:n
    x1=x0-f(x0)/df(x0);

    if(abs(x1-x0)<e)
        break;

    else
        x0=x1;
    end
end

fprintf('The root is %2.9f',x1)
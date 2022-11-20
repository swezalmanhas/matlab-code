clc;
g=@(x)((2*x^2+5)^(1/3)); 
x0=2.5;
e=0.001;
n=input('Enter the maximum number of iteration');
for i=1:n

    x1=g(x0);
    if (abs(x1-x0)<=e)
      
        break;
    else
        x0=x1;
        
    end
end  
fprintf('the value of x1=%f is',x1)
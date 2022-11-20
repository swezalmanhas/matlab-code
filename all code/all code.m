%bisection method

% f=@(x)(x^2+4*x^2-10);
% a=input("enter the start value");
% b=input("enetr trhe end valuue");
% tol=input("enter the error");
% c=(a+b)/2;
% if(f(a)*f(b)>0)
%     fprintf("wrong input");
% end
% while(abs(a-b)>tol)
%     c=(a+b)/2;
%     if(f(a)*f(c)<0)
%         b=c;
%         c=(a+b)/2;
%     elseif(f(b)*f(c)<0)
%         a=c;
%         c=(a+b)/2;
%     elseif(f(c)==0)
%         break;
%     end
% end
% fprintf("th output  is %f",c);

%newton method

% f=@(x)(x^3-3*x+5);
% df=@(x)(3*x^2-3);
% n=input("no of iteration");
% tol=input("no of tolerance");
% x=input("stating point");
% for i=1:n
%     x1=x-(f(x)/df(x));
%     if(abs(x1-x)<tol)
%         break;
%     else
%         x=x1;
%     end
% end
% fprintf("the input is %f",x1);


% secant method
% f=@(x)(x^3-5*x+1);
% N=input("no of itertaion");
% tol=input("tolerance");
% x0=input("first value");
% x1=input("second value");
% for i=1:N
% x2=x1-((f(x1)*(x1-x0))/(f(x1)-f(x0)));
% if(abs(x1-x0)<tol)
%     fprintf("the value of the root is %f",x2);
%     f(x2);
%     break;
% else
%     x0=x1;
%     x1=x2;
% end
% end

% guass elemimnation method

% A=input("enter the matrix");
% B=input("enter the augutment" );
% aug=[A,B];
% n=length(A);
% 
% aug
% for i=1:n-1
%     for j=i+1:n
%         m=aug(j,i)/aug(i,i);
%         aug(j,:)=aug(j,:)-m*aug(i,:);
%     end
% end
% aug
% x=zeros(n,1);
% x(n)=aug(n,n+1)/aug(n,n);
% for i=n-1:-1:1
%     x(i)=(aug(i,n+1)-aug(i,i+1:n)*x(i+1:n))/aug(i,i);
% end
% x

% lu decomposition

% a=input("Enter the matrix");
% b=input("enter the coffiecent");
% n=length(a);
% l=eye(n);
% for i=1:n-1
%     for j=i+1:n
%         m=a(j,i)/a(i,i);
%         l(j,i)=m;
%         a(j,:)=a(j,:)-m*a(i,:);
%     end
% end
% y=l\b;
% x=a\y;
% disp(x)

% guass sediel

% 
% a=input("enter the matrix");
% b=input("enter the cofficent");
% c=length(a);
% x=(1:c);
% for i=1:c
%     x(i)=input("enter the intial value");
% end
% n=input("enter the number of iteration");
% k=1;
% while k<=n
%     for i=1:c
%         sum=b(i);
%         for j=1:c
%             if (i~=j)
%                 sum=sum-a(i,j)*x(j);
%             end
%         end
%         x(i)=sum/a(i,i);
%     end
%     k=k+1;
% end
% disp(x(1:c))

% lagrange
% x = [0 0.25 0.5 0.75];
%  f = [1 1.64872 2.71828 4.48169];
%  n=length(x);
%  p=0.43;
% sum = 0;
% for i = 1:n
%     l(i)=1;
%     for j=1:n
%         if j~=i 
%             l(i) = (p-x(j))/(x(i)-x(j))*l(i) ;
%         end
%     end
% end
% for i = 1:n
%     sum = sum + f(i)*l(i);  
% end
% sum

% newton div
% x=[1 1.5 2.0 2.5];
% y=[2.7183 4.4817 7.3891 12.1825];
% n=length(x);
% p=input("enter the value to be find");
% n=size(x,1);
% if n==1
%     size(n,2);
% end
% for i=1:n
%     d(i,1)=y(i);
% end
% for i=2:n
%     for j=2:i
%         d(i,j)=(d(i,j-1)-d(i-1,j-1))/(x(i)-x(i-j+1));
%     end
% end
% fx0=d(n,n);
% for i=n-1:-1:1
%     fx0=fx0*(p-x(i)+d(i,i));
% end
% fx0

% power method

% a=input("enter the value");
% tol=input("enter the approximation");
% x=input("enter the intial value");
% n=input("enter the number of iteration");
% y=a*x;
% k=max(y);
% for i=1:n
%     y=a*x;
%     n=norm(y,"inf");
%     x=y/n;
%     k(i)=n;
%     if(i>1)
%         if((abs(k(i)-k(i-1)))<tol)
%             k(i)
%             x
%             break;
%         end
%     end
%      end

% euler

% f=@(t,y)(-y+2*cos(t));
% t0=input("enter the intaila value");
% y0=input("enter the valuof y");
% h=input("enter the value of mesh");
% b=input("enter the find value");
% n=(b-t0)/h;
% for i=1:n
%     k1=h*f(t0,y0);
%     k2=h*f(t0+h,y0+k1);
%     y1=y0+((k1+k2)/2);
%     y0=y1;
%     t0=t0+h;
% end
% y1

% ranga kutta method

% f=@(t,y)(-y+2*cos(t));
% t0=input("enter the intial ");
% y0=input("enter the final ");
% h=input("enter the mesh value ");
% b=input("enter the fixed value ");
% n=(b-t0)/h;
% for i=1:n
%     k1=h*f(t0,y0);
%     k2=h*f(t0+(h/2),y0+(k1/2));
% 
%     k3=h*f(t0+(h/2),y0+(k2/2));
%     k4=h*f(t0+h,k3+y0);
%     y1=y0+(k1+k4+2*k2+ 2*k3)/6;
%     t0=t0+h;
% 
%     y0=y1;
% 
% 
% 
% 
% end
% y1

% trapezoid
% 
% f=@(x)(cos(x)^2);
% a=input("lower value");
% b=input("upper value");
% n=input("number of subinterval");
% h=(b-a)/n;
% sum=0;
% for i=1:n-1
%     sum=sum+f(a+i*h);
% end
% sum=2*sum+f(a)+f(b);
% ans=(h/2)*sum;
% disp(ans);
% 


% simpson

% f=@(x)(cos(x)^2);
% a=input("enter the lower value");
% b=input("enter the upper value");
% n=input("enter the iteration value");
% h=(b-a)/n;
% sum=0;
% for i=1:n-1
%     if rem(i,2)==0
%         sum=sum+2*f(a+i*h);
%     else
%         sum=sum+4*f(a+i*h);
%     end
% end
% sum=sum+f(a)+f(b);
% ans=sum*(h/3);
% disp(ans);

    


%eye(n) for identity matrix
%L\b for inv(L)*b
a=input("enter matrix");
n=length(a);
l=eye(n);
b=input("enter constants:");
%constructing L,U
for i=1:n-1
    for j=i+1:n
        m=a(j,i)/a(i,i);
        l(j,i)=m;
        a(j,:)=a(j,:)-m*a(i,:);
    end
end

y=l\b;
x=a\y;
disp(x);
l
a
disp(y)

%[10,-7,3,5;-6,8,-1,-4;3,1,4,11;5,-9,-2,4;]
%[6;5;2;7]

%[10,8,-3,1;2,10,1,-4;3,-4,10,1;2,2,-3,10;]
%[16;9;10;11;]
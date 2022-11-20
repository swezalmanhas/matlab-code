A=[10 ,8, -3, 1;2, 10, 1, -4 ; 3, -4, 10, 1;2, 2 ,-3, 10];
B=[16;9;10;11];

Aug=[A B];
n=length(A);

Aug

for i=1:n-1
    for j=i+1:n
        m=Aug(j,i)/Aug(i,i);
        Aug(j,:)=Aug(j,:)-m*Aug(i,:);
    end
end

Aug

X=zeros(n,1);

X(n)=Aug(n,n+1)/Aug(n,n)

for i=n-1:-1:1
    X(i)=(Aug(i,n+1)-Aug(i,i+1:n)*X(i+1:n))/Aug(i,i);
end

X 

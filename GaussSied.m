function x=GaussSied(A,b,x0,kMax)
[m, n] = size(A);
x1temp=zeros(n,1);
for i =1:n
    x1(i)=(b(i)-A(i,[1:i-1])*x1temp([1:i-1])-A(i,[i+1:n])*x0([i+1:n]))/A(i,i);
    x1temp(i)=x1(i);
end
x1=x1';
k=1;
xktemp=zeros(n,1);
while k<kMax
    for i = 1 : n
        xk(i)=(b(i)-A(i,[1:i-1])*xktemp([1:i-1])-A(i,[i+1:n])*x1([i+1:n]))/A(i,i);
        xktemp(i)=xk(i);
    end
    x1=xk';
    k=k+1;
end
x=xk';

end
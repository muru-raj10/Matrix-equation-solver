function x=Jacobi(A,b,x0,kMax) %x0 a column vector
[m, n] = size(A);
for i=1 : n
    x1(i)=(b(i)-A(i,[1:i-1,i+1:n])*x0([1:i-1,i+1:n]))/A(i,i);
end
x1=x1';
k=1;
while k<kMax
    for i = 1 : n
        xk(i)=(b(i)-A(i,[1:i-1,i+1:n])*x1([1:i-1,i+1:n]))/A(i,i);
    end
    x1=xk';
    k=k+1;
end
x=xk';
end



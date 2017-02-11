function x = SOR(A,b,x0,w,kMax)
[m, n] = size(A);
x1temp=zeros(n,1);
k=0;
while k<kMax
    for i=1:n
        x1(i)=(1-w)*x0(i)+w*(b(i)-A(i,[1:i-1])*x1temp([1:i-1])-A(i,[i+1:n])*x0([i+1:n]))/A(i,i);
        x1temp(i)=x1(i);
    end
x0=x1';
k=k+1;
end
x=x1';
end

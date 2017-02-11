function [L,U]=LUdec(A)
[m,n]=size(A); %m=n

L=zeros(m,n);
U=zeros(m,n);

for i = 1 :n
    L(i,i) = 1;
end

for j = 1 : n
    for i = 1 : j
        U(i,j) = A(i,j);
        for k = 1 : (i-1)
            U(i,j) = A(i,j) - L(i,k)*U(k,j);
        end
    end
    for i = j+1 : n
        L(i,j)=A(i,j);
        for k = 1 : (j-1)
            L(i,j) = A(i,j)- L(i,k)*U(k,j);
        end
        L(i,j)=L(i,j)/U(j,j);
    end
end

end
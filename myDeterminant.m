function r=myDeterminant(A)
[m,n]=size(A);
if n==2
    r=A(1,1)*A(2,2)-A(1,2)*A(2,1);
elseif m==1 && n==1
    r=A;
else
    sum=0;
    for j=1:m
        x=A(1,j);
        y=[A(2:end,1:j-1) A(2:end,j+1:n)]; 
        %y is matrix obtained by eliminating the jth row and ith column
        sum=sum+(-1)^(j+1)*x*myDeterminant(y);
    end
    r=sum;
end
        
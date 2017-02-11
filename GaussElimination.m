
function x=GaussElimination(A,b)  %assume A is non-singular matrix
Ab=[A , b];
[m,n]=size(A);   %A is a square matrix, so m=n
for i=1:n-1
    for k=i+1:n
        if abs(A(k,i))> abs(A(i,i))
           U=Ab(i,:);       %temp variable to do swap
           Ab(i,:)=Ab(k,:);
           Ab(k,:)=U;
       end
   end
end
for i=1:n           %Perform gaussian elimination of the first terms
    for k=i+1:n
        temp= Ab(k,i)/Ab(i,i); %Another temp variable
        for j=i:n+1
            Ab(k,j)=Ab(k,j)-temp*Ab(i,j);
        end
    end
end

for i=n:-1:1            %perform backward substitution
    sum=0;
    for j=i+1:n
        sum=sum+Ab(i,j)*x(j);
    end
    x(i)=(Ab(i,n+1)-sum)/Ab(i,i);
end

end

          
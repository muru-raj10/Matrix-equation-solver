function [L , U] = LUdecom(A)
[m, n] = size(A);
for j=1:n
    for i =1:j
        LU(i,j)=A(i,j);
        for k = 1:(i-1)
            LU(i,j)=LU(i,j)-LU(i,k)*LU(k,j);
        end
        
    end
    for i =(j+1):n
        LU(i,j)= A(i,j);
        for k = 1:(j-1)
            LU(i,j)=LU(i,j)-LU(i,k)*LU(k,j);
        end
        LU(i,j)=LU(i,j)/LU(j,j);
    end
end

if nargout==0 || nargout==1
   L=LU;
elseif nargout==2
    for i=1:n
        for j = 1:i-1
            L(i,j)=LU(i,j);
        end
        L(i,i)=1;
        for j =i:n
            U(i,j)=LU(i,j);
        end
     end
end

end

A=zeros(10,5);
for i =1:4
    A(i,1)=1;
    A(i,i+1)=1;
end
for i=5:7
    A(i,2)=1;
    A(i,i-2)=1;
end
for i= 8:9
    A(i,3)=1;
    A(i,i-4)=1;
end
A(10,4)=1;
A(10,5)=1;



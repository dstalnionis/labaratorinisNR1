function [x,i] = dalinimas_pusiau(Leps)
%ieškau intervalo
a=1; b=30; 

xm=(a+b)/2;
L=b-a;
i=0;
while abs(L)>Leps
    i=i+1;
    
    x1=a+L/4;
    x2=b-L/4;
    f1=tfn(x1);
    f2=tfn(x2);
    fm=tfn(xm);
    
    if f1<fm
        b=xm; xm=x1;
    else
        
        if f2<fm 
            a=xm; xm=x2;
        else
            a=x1; b=x2;
        end
    end
    
    L=b-a;
end    
xm=(a+b)/2;

x1 = floor(xm);
x2 = ceil(xm);
f1=tfn(x1);
f2=tfn(x2);
if f1<f2 
    x = x1;
else
    x = x2;
end    

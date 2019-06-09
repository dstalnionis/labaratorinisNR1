function [xm,n] = auksinis_pjuvis(Leps)
q=(3-sqrt(5))/2
a=1; b=30; t=0; n=0;
while b-a>Leps
    
    x1=a+(b-a)*q;
    x2=b-(b-a)*q;
    n = 0;
    
    x=[a x1 x2 b];
    m=min(x);
    i = find(x==m);
    xm = x(i);
    
    if abs(xm-a)>abs(xm-b)
        a=x1; x1=x2; t=1;
    else
        b=x2; x2=x1; t=2;
    end
    if b-a>Leps
        if t==1
            x2=b-(b-a)*q;
        end    
        if t==2
            x1=a+(b-a)*q;
        end
        n = n + 1;
    end
end
    
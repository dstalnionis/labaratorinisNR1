close all; clear all; clc; format long;
global b c2 c_
stud_nr = 20170166
b  = mod(stud_nr,7)/2+2.5
c2 = mod(stud_nr,30)+150
c_ = mod(stud_nr,5)+3
t=0.5:0.01:10;
c=tfn(t);
plot (t,c); grid on;
xlabel(' t '), ylabel('c(t)'), title('Tikslo funkcija: c(t) = 15*t + 152/t'), 
j=0;
tiksl=1e-3 
for L=tiksl:tiksl:1  
    [x,i] = dalinimas_pusiau(L);
    j=j+1;
    La(j)=L;
    xa(j)=x;
    ia(j)=i;
end
figure;
plot (La,ia); grid on;
xlabel(' L '), ylabel('i'), title('Iteracijos')
disp('Optimalus sprendinys:')
xa(1)
disp('Optimali prekiu partijos apimtis:')
q=xa(1)*b
disp('Iteraciju:')
it = ia(1)
options = optimset('Display','iter','TolX',tiksl);
x = fminbnd(@tfn,1,30,options)

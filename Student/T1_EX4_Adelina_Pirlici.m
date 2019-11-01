%EX4
%Realizati un program MATLAB in care sa generati si sa reprezentati grafic
%folosind functia stem urmatorii vectori:
%a) x=[0,0,0,0,0,1,0,0,...,0], vectorul z avand lungimea 21. Reprezentarea
%grafica se va face in doua 'miniferestre' (functia subplot) vectorul z in
%functie de n=0:20 respectiv m=-5:15.
%t=|10-n|, reprezentat grafic in fucntie de n= 0:20
%c= xi=sin(pi*n/17), -15<=n<= 25 si x2=cos(pi*n/sqrt(23))
%a)
z=[0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0];
n=0:20;
m=-5:15;
plot(z,n);
subplot(2,1,1), stem(z,n), grid;
subplot(2,1,2), stem(z,m), grid;
figure(1);
%b)
t=abs(10-n);
plot(t)
subplot(2,1,1), stem(t,n), grid;
figure(2)
%c)
n= -15:25;
m= 0:50;
x1=sin((pi*n)/17);
x2= cos((pi*n)/sqrt(23));
plot (x1);
plot(x2);
subplot(2, 1 , 1), stem (x1, n),grid;
subplot(2, 1, 2), stem(x2,m), grid;
figure(3);
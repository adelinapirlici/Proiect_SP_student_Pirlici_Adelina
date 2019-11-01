%Ex5
%a) Modificati pasul de variatie a variabilei t la 0.01 ;i apoi la 0.0002.
%Comentati diferentele.
%b) Masurati pe grafic perioada semnalului sinusoidal in cele 3 situatii
%c)Generati un semnal cosinusoidal de frecventa 20Hz pe care sa-l
%reprezentati cu culoare rosie pe acelasi grafic peste semnalul sinusoidal.

%cazul 1 periaoda ~9(5), semnal sinusoidal, prima perioada incepe de 0.5;
F1=50
t1=0:0.0001:0.2;
s1=2*sin(2*pi*F1*t1);
plot(t1,s1,'.-'), xlabel('Timp[s]'),grid;
figure(1)
% cazul 2 perioada neperiodic, semnal de tip rampa;
F2=50
t2=0:0.01:0.2;
s2=2*sin(2*pi*F2*t2);
plot(t2,s2,'.-'), xlabel('Timp[s]'),grid;
%figure(2)
%cazul 3 perioada 9, semnal sinusoidal, prima periaoda incepe de la 0 
F3=50;
t3=0:0.0002:0.2;
s3=2*sin(2*pi*F3*t3);
plot(t3,s3,'.-'), xlabel('Timp[s]'),grid;

% punctul c;
F4=20;
t4=0:0.001:0.2;
s4=2*cos(2*pi*F4*t4);
plot( t4, s4, '.-'), xlabel('Timp[s]'), grid,figure(3)

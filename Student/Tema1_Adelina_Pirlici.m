
%1
f1=1/2; %frecventa
NrP=5; % numarul de perioade afisate
T= 2; %perioda
duty =0.25

rez1=0.002;

t1 = rez1:rez1:T; %0.002=rezolutia, 2=perioada
tp= rez1:rez1:T*NrP;
x=0.5*ones(1,length(t1)*duty); %nivelul minim * vector de 1 inmultit cu  rezolutia * cu factorul de umplere
y=(-1)*ones(1,length(t1) *(1-duty)); % nivel maxim *vector de 1 inmultit cu rezolutia* (1-factor de umplere)

v=[x,y]; % vector compus din nivelul minim si nivelul maxim al semnalului
vp=repmat(v,1,NrP); % periodicizare vector

plot(tp,vp),grid, figure(1); % afisare pe grafic a semnalului cerut
title('Semnal Dreptunghiular rez 2ms') % denumire grafic
xlabel('Timp[s]') %denumire axa absciselor
ylabel('U[V]') % denumire axa ordonatelor



% rezolutie de 20 ms
figure(2)
rez2=0.02;
t2 = rez2:rez2:T; %0.2=rezolutia, 2=perioada
tp2= rez2:rez2:T*NrP;

x1=0.5*ones(1,length(t2)*duty);
y1=(-1)*ones(1,length(t2) *(1-duty));

v2=[x1,y1];
vp2=repmat(v2,1,NrP);

plot(tp2,vp2),grid 
title('Semnal Dreptunghiular la rez 20ms')
xlabel ('Timp[s]')
ylabel('U[V]')

%rezolutie de 200ms

figure(3)
rez3=0.2;
t3 = rez3:rez3:T; %0.2=rezolutia, 2=perioada
tp3= rez3:rez3:T*NrP;

%x2=0.5*ones(1,length(t3)*duty);
%y2=(-1)*ones(1,length(t3)*(1-duty));

%v3=[x2,y2];
%vp3=repmat(v3,1,NrP);

%plot(tp3,vp3),grid 
%title('Semnal Dreptunghiular la rez 200ms')
%xlabel ('Timp[s]')
%ylabel('U[V]')



%2 
%semnal triunghiular periodic la rez 2ms
figure (4)
t4 = 0:0.002:5; % semnalul nu are componenta continua rezulta ca este simetric de aceea se alege widith ca fiind 0,5 
T4 = 2*pi*5/3*t4;  % widith = (nivel minim +nivel maxim)/2
s4= 1.5*sawtooth(T4,0.5)-0,5 % panta unui semnal triunghiuar = ( amplitudeintea maxima-amplitudinea minima)/ (t-to) de aici rezulta ca t-t0 este 3, iar perioada este 5 fiind specificata
plot (t4,s4), grid;       
title ('Semnal triunghiular simetric la rez 2ms')
xlabel ('Timp [s]')
ylabel ('U[V]')

% semnal triunghiular periodic la rez 20ms
figure(5)
t5 = 0:0.02:5;
T5 = 2*pi*5/3*t5;
s5= 1.5*sawtooth(T5,0.5)-0,5
plot(t5,s5), grid;
title('Semnal triunghiular simetric la rez 20ms')
xlabel('Timp[s]')
ylabel('U[V]')

%semnal triunghiular periodic la rez 200ms
figure(6)
t6 = 0:0.2:5;
T6 = 2*pi*5/3*t6;
s6= 1.5*sawtooth(T6,0.5)-0,5
plot(t6,s6), grid;
title('Semnal triunghiular simetric la rez 200ms')
xlabel('Timp[s]')
ylabel('U[V]')

%3
%semnal dreptunghiular multinivel, aleator, 2ms
%a
figure(13)
tex3= 0 :0.002:10
niv =[-1 1];
hold on
for n= 0:0.25:10
    l=datasample(niv,1);
    plot(tex3, l*rectpuls(tex3-n,0.25))
end
title('Semnal Dreptunghiular multinivel la 200ms')
xlabel('Timp[s]')
ylabel ('U[V]')
hold off

%b
figure(131)
tex4= 0 :0.002:10
niv4 =[-3 -1 1 3];
hold on
for n2= 0:0.25:10
    l=datasample(niv4,1);
    plot(tex4, l*rectpuls(tex4-n2,0.25))
end
title('Semnal Dreptunghiular multinivel la 200ms')
xlabel('Timp[s]')
ylabel ('U[V]')
hold off

%c
figure(132)
tex5= 0 :0.002:10
niv5 =[-3 -1 1 3];
hold on
for n3= 0:0.25:10
    l2=datasample(niv5,1);
    plot(tex5, l2*rectpuls(tex5-n3,0.25))
end
title('Semnal Dreptunghiular multinivel la 200ms')
xlabel('Timp[s]')
ylabel ('U[V]')
hold off

%c
figure(133)
tex6= 0 :0.002:10
niv6 =[-5 -3 -1 1 3 5];
hold on
for n4= 0:0.25:10
    l3=datasample(niv6,1);
    plot(tex6, l3*rectpuls(tex6-n4,0.25))
end
title('Semnal Dreptunghiular multinivel la 200ms')
xlabel('Timp[s]')
ylabel ('U[V]')
hold off

%d
figure(133)
tex7= 0 :0.002:10
niv7 =[-7 -5 -3 -1 1 3 5 7];
hold on
for n5= 0:0.25:10
    l4=datasample(niv7,1);
    plot(tex7, l4*rectpuls(tex7-n5,0.25))
end
title('Semnal Dreptunghiular multinivel la 200ms')
xlabel('Timp[s]')
ylabel ('U[V]')
hold off



%4 semnal sinusoidal redresat mono alternanta
figure(7)
t7 = 0:0.002:3;
s7=0.8*sin(2*pi*t7*1/3)
s7(s7<0)=0  %valorile negative devin 0
    subplot (3,1,1), plot (t7, s7),grid;

title ('Sinus redresat mono-alternanta')
xlabel ('Timp[s]')
ylabel('U[V]')

% rezolutie temporara de 20ms
 figure(8)
t8=0:0.02:3;
s8=0.8*sin(2*pi*t8*1/3);
s8(s8<0)=0
subplot(3,1,3), plot(t8,s8);
title ('Sinus redresat mono-alternanta2')
xlabel('Timp[s]')
ylabel('U[V]')

%rezolutie temporara de 200ms
 figure(9)
t9=0:0.02:3;
s9=0.8*sin(2*pi*t9*1/3);
s9(s9<0)=0
subplot(3,1,2), plot(t9,s9),grid;
title ('Sinus redresat mono-alternanta2')
xlabel('Timp[s]')
ylabel('U[V]')


%semnal sinusoidal redresat dubla alternanta 2 ms
figure(10);
t10=0:0.002:4;
s10=1.5*abs(sin(2*pi*t10*1/4)); % semnalul trebuie inmultit cu 1/4 pentru a corespunde cu perioada
subplot(3,1,1), plot(t10,s10),grid; %abs reprezinta valoarea absoluta a semnalului, converteste valoarea negativa la una pozitiva
title ('Sinus redresat dubla-alternanta2 2ms')
xlabel('Timp[s]')
ylabel ('A[V]')

%rezolutie 20 ms
figure(11);
t11=0:0.02:4;
s11=1.5*abs(sin(2*pi*t11*1/4));
subplot(3,1,1), plot(t11,s11),grid
title ('Sinus redresat dubla-alternanta2 20ms')
xlabel('Timp[s]')
ylabel ('A[V]')

% rezolutie 200 ms
figure(12);
t12=0:0.2:4;
s12=1.5*abs(sin(2*pi*t12*1/4));
subplot(3,1,1), plot(t12,s12),grid;
title ('Sinus redresat mono-alternanta2 200ms')
xlabel('Timp[s]')
ylabel ('A[V]')


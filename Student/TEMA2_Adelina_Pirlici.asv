%Determinarea coeficientilor SFC, reprezentarea semnalului si al spectrului
% semnal triunghiular de perioadã T=40s, durata %D=16s(conform tabelului), numãr de coeficien?i N=50
P=40; %perioada semnalului
f=1/P; % frecventa = inversul perioadei
t=-2*P:0.002:2*P; % esantionarea semnalului original
D=0.4;  % am ales un D conform cerintei, numarul meu din tabel fiind 16 =>
% 16/40=0.4 ; 
N=50;
xi=(1+sawtooth(2*pi*f*t,D))/2; % semnal triunghiular deoarece am numar par
% componenta initiala
f0=@(t)(1+sawtooth(2*pi*f*t,D))/2; % functia ce afla componenenta continua
cc=1/P*integral(f0,0,P); %determinarea componentei continue
Ck=zeros(1,N); %coeficienti nuli de la 1 la 50
Ak=zeros(1,N);
xr=0;
for (k=1:1:N) % structura iterativa ce modifica semnalul pentru fiecare valoare a lui k
                % k(1-50) si aduna coeficientul rezultat la suma
                % coeficientilor fiind inmultit mai apoi cu exponentiala
                %din formula SFC
                
   f1=@(t)(1+sawtooth(2*pi*f*t,D))/2.*exp(-2*pi*f*t*1j*(k-25));
   Ck(k)=1/P*integral(f1,0,P);
   Ak(k+1)=2*abs(Ck(k));
   xr=xr+Ck(k)*exp(2*pi*f*t*1j*(k-25));
end
figure(1); 
plot(t,xr,t,xi); %afisarea graficului semnalului
figure(2); 
Ak(26)=abs(cc);
Ak(1)=Ak(51);
stem([0:N],Ak); % afisarea spectrului 




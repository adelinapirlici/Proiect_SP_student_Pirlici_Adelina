%ex
%Realizati un program care sa genereze un semnal binar aleator (valori de 0
%si 1), perioada de bit: 0.5 ms esantionat cu frecventa de esantionare
%Fs=12kHz
%a)Reprezentati cu functia plot semnalul continuu in timp absolut(in
%miliscunde)
%b) Reprezentati cu functia stem semnalul discret in functie de n

Fs=12;
t=0.5
F0=1/t;
f0=F0/Fs;
N=12*t;
n=0:N-1;
plot(s);
stem (n,s), grid;

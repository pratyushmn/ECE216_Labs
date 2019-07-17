T=3;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : T;
Fn = 10000;
y = sin(Fn*2*pi*t);
sound(y, Fs);
% z = 2*y;
% sound(z,Fs);
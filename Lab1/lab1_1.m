T=3;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : T;
Fn = 1000;
y = sin(Fn*2*pi*t);
plot(t,y);
axis([0 T*48/48000 -1 1])
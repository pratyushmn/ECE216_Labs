[bass, fs] = audioread('bass.wav');
guitar = audioread('guitar.wav');
drums = audioread('drums.wav');

duration = 5;
b = bass(1:fs*duration);
g = guitar(1:fs*duration);
d = drums(1:fs*duration);

comp = b + g + d;

t = transpose(linspace(0, 3, length(g)));
g2 = 0.2*g.*t.*t.*t;
comp2 = b + g2 + d;

sound(comp2, fs);
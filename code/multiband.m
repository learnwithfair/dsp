clc
clear
close all
n=50;
w=[0.2 0.4 0.6 .8]; % tf/(fs/2) = .2 then tf = .2/2*fs = 800 
b=fir1(n,w);
freqz(b,1,128,8000);
figure(2);
[h,w]=freqz(b,1,128,8000);
plot(w,abs(h)); % Normalized Magnitude Plot
grid;
figure(3);
zplane(b,1);
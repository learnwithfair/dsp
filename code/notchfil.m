clc
clear
close all
fs=8000;
n=40;
b=fir1(n,[1500/4000 1550/4000],'stop'); % frequncy difference between tf1 and tf2 are very narrow
freqz(b,1,128,fs)
figure(2)
[h,w]=freqz(b,1,128,fs);
plot(w,abs(h)); % Normalized Magnitude Plot
grid
figure(3)
zplane(b,1);
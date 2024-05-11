clc
clear
close all
% Target frequency between 1200 to 1800;
fs= input('Enter Sampling Frequency : '); % sampling frequency 8000;
n=input('Enter Order of the Filter : '); % order of the filter 50;
f = fs/2;
b=fir1(n,[1200/f 1800/f],'bandpass');
freqz(b,1,128,fs);
figure(2);
[h,w]=freqz(b,1,128,fs);
plot(w,abs(h)); % Normalized Magnitude Plot
grid;
figure(3);
zplane(b,1);
%ripples = 1 dB and minimum stop band attenuation of 50 dB at 1500 Hz. The sampling frequency 
%for the filter is 8000 Hz;
%We will consider same filter but our target now is to pass all frequencies above 1200 Hz
clc;
clear;
close all;
tf = 1200;
fs=8000;

[n,w]=buttord(tf/(fs/2),1500/(fs/2),1,50); % finding the order of the filter
[b,a]=butter(n,w,'high');% finding zeros and poles for filter
figure(1);
freqz(b,a,512,fs);  % Magnitude and Phase Plot of the filter
figure(2);
[h,q] = freqz(b,a,512,fs);
plot(q,abs(h)); % Normalized Magnitude plot
grid;
figure(3);
f=1200:2:1500;
freqz(b,a,f,fs); % plotting the Transition band
figure(4);
zplane(b,a);% pole zero constellation diagram
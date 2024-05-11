%%%%%%                 FFT PART                  %%%%%%%%%%%%%%
% Find The spectrum of the following signal
% f=0.25+2*sin(2*pi*5*k)+1*sin(2*pi*12.5*k)+1.5*sin(2*pi*20*k)+0.5*sin(2*pi*35*k);
clc
clear
close all
N=256; % Number of Samples
T=1/128; %sampling frequency 128Hz
k=0:N-1;
time=k*T;
f=0.25+2*sin(2*pi*5*k*T)+1*sin(2*pi*12.5*k*T)+1.5*sin(2*pi*20*k*T)+0.5*sin(2*pi*35*k*T);
subplot(2,1,1);
plot(time,f);
title('Signal sampled at 128Hz');
grid on;
F=fft(f);
magF=abs([F(1)/N,F(2:N/2)/(N/2)]);
hertz=k(1:N/2)*(1/(N*T));

subplot(2,1,2);
stem(hertz,magF);
title('Frequency Components');
grid on;















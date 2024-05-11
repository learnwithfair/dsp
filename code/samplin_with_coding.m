clc;
clear all;
close all;

A =input('Enter amplitude of transmitting signal : ');
f=50;
T=1/f;
t=0:T/100:2*T ;
n=1:40;
y=A*sin(2*pi*f*t);
subplot(4,1,1);
plot(t,y);
title("continues time message signal/transmitting signal");
xlabel("time");
ylabel("amplitude");

%sampling signal 
y1=A*sin(2*pi*f*(0.001)*n);
subplot(4,1,2);
stem(n,y1);
title("Discrete time signal after sampling");
xlabel("n---");
ylabel("amplitude");

%DC + Ac lavel 
y2=A+y1 ;
subplot(4,1,3);
stem(n,y2);
title("DC lavel + Discrete Time signal");
xlabel("n----");
ylabel("amplitude");

%quantinization 
y3=round(y2);
subplot(4,1,4);
stem(n,y3);
title("Quantinization (Quantized Signal) ");
xlabel("n----");
ylabel("amplitude");

%coding 
y4=dec2bin(y3);
disp("binary information");
disp(y4);

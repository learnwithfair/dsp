%with pass band ripples = 1 dB and minimum stop band attenuation of 50 dB. The
%sampling frequency for the filter is 8000 Hz;
clc
clear
close all
[n,w]=buttord([800/4000,2800/4000],[400/4000, 3200/4000],1,50); %Wp = [.2 .7], Ws = [.1 .8]  buttord(Wp,Ws,Rp,Rs
[b,a]=butter(n,w,'bandpass');
figure(1);
freqz(b,a,128,8000);
figure(2);
[h,w]=freqz(b,a,128,8000);
plot(w,abs(h));
grid;
figure(3);
f=600:2:1200;
freqz(b,a,f,8000); % Transition Band
figure(4);
f=2800:2:3200;
freqz(b,a,f,8000); % Transition Band
figure(5);
zplane(b,a);
%Suppose out target is to pass all frequencies below 1200 Hz
clc
clear
close all
f= input('Enter Target Frequency : '); % Target frequency 1200;
fs= input('Enter Sampling Frequency : '); % sampling frequency 8000;
n=input('Enter Order of the Filter : '); % order of the filter 50;
w=f/ (fs/2);    % Calculate cut off frequency between 0 to 1
b=fir1(n,w,'low'); % Zeros of the filter. b is window method that is real and has linear phase. The normalized gain of the filter at Wn is -6 dB.
% freqz(b,A,N,fs); a = gaing or no. of denominatior
freqz(b,1,128,fs); % Magnitude and Phase Plot of the filter
figure(2);
[h,w]=freqz(b,1,128,fs);
plot(w,abs(h)); % Normalized Magnitude Plot
grid
figure(3)
zplane(b,1);
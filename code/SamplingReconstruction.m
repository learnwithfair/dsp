% Define the parameters of the signal
clc;
clear;
close all;
f = input('Enter Frequency of the Sinusoid : ');             % Frequency of the sinusoid (in Hz): 10
fs = input('Enter Sampling Frequency : ');                   % Sampling rate (in Hz): 200
t = 0:1/fs:1;                                                % Time vector
x = sin(2*pi*f*t);                                           % Generate the sinusoidal signal
subplot(3,1,1);                                              
plot(t,x);                                                   % Plot the original signal
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal');
% Sample the signal
Ts = 1/fs;           % Sampling interval (in seconds)
n = 0:Ts:1;          % Sampling instants
xn = sin(2*pi*f*n);  % Sampled signal
% Plot the sampled signal
subplot(3,1,2);
stem(n,xn);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal');

% Reconstruct the analog signal using ideal reconstruction
xr = zeros(size(t));  % Initialize the reconstructed signal as zero
for i = 1:length(n)
    xr = xr + xn(i)*sinc((t-(i-1)*Ts)/Ts);
end

% Plot the reconstructed signal
subplot(3,1,3);
plot(t,xr);
xlabel('Time (s)');
ylabel('Amplitude');
title('Reconstructed Signal');
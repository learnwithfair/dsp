% x(n) = {1,2,3,4,5} stating point 2
clc
clear
close all
n=-1:3; % stating with -1 and end with 3 i.e (-1, 0, 1, 2, 3)
x=1:5; % sample 1 to 5
k=0:500; %N = 500 i.e 0 to 500 = 501
w=(pi/500)*k;
X=x*(exp(-1j*pi/500))*(n'*k);
magX=abs(X);
angX=angle(X);
realX=real(X);
imagX=imag(X);

subplot(2,2,1);
plot(k/500,magX);
grid;
xlabel('Frequency in pi units ');
title('Magnitude part');


subplot(2,2,2);
plot(k/500,angX/pi);
grid;
xlabel('Frequency in pi units ');
title('Angle part');


subplot(2,2,3);
plot(k/500,realX);
grid;
xlabel('Frequency in pi units ');
title('Real part');


subplot(2,2,4);
plot(k/500,imagX);
grid;
xlabel('Frequency in pi units ');
title('Imaginary part');
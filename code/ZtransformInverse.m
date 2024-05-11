clc
clear
close all
syms z n
a=1/16^n; 		%x(n) =  [1/16^n]u(n)
ZTrans=ztrans(a);       %Z transform
disp('Z-transform : ');
disp(ZTrans);
InvrZ=iztrans(ZTrans);       %InverseZtransform
disp('Incerse Z-transform : ');
disp(InvrZ);


B=[0 1 1];
A=[1 -2 3];
pl = roots(A); % To display pole value 
disp('Pole :');
disp(pl)
zr = roots(B); % To display zero value
disp('Zeros :');
disp(zr)
figure(1);
zplane(B,A); % Compute and display pole-zero diagram

syms z n
I=iztrans(3*z/(z+1));
disp(I);

clc;clear;

z=roots([1,0,2]);
p=roots([1,2,-1,1]);

clc;clear;
z=roots([1,0,0,1]);
p=roots([1,0,2,0,1]);

clc;clear;
ZZ=roots([4,8,10]);
PP=roots([2,8,18,20]);

% using pzmap method calculate poles and zeros
clc;clear;
num=[1,0,0,1];
den=[1,0,2,0,1];
systf=tf(num,den);
figure(2);
pzmap(systf);






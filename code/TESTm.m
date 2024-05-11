close all
syms z n
a=1/16^n; 		%x(n) =  [1/16^n]u(n)
ZTrans=ztrans(a);       %Z transform
disp('Z-transform : ');
disp(ZTrans);
InvrZ=iztrans(ZTrans);       %InverseZtransform
disp('Inverse Z-transform : ');
disp(InvrZ);


B=[0 1 1];
A=[1 -2 3];
pl = roots([1 -2 3]); % To display pole value 
disp(pl);
zr= roots(B); % To display zero value
disp(zr);
figure(1);
zplane(B,A); % Compute and display pole-zero diagram

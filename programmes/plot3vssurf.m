clc
clear all
close all
syms x y
f = x.^2-y.^2;
xx = -1:0.01:1;
yy = xx;
[xi yi] = meshgrid(xx,yy);
fi = subs(f,{x y},{xi yi});
subplot(121)
plot3(xi,yi,fi)
title('plot3')
fi = inline(vectorize(f));
fi = fi(xi,yi);
subplot(122)
surf(xi,yi,fi)
title('surf')
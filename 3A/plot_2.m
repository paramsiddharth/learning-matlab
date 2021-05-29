clc
clear all
[x y] = meshgrid(-2:.2:2);
z = x .* exp(- x .^ 2 - y .^ 2 );
surf(x,y,z);
colormap default
shading faceted
clc
clear all
syms x
f = input('Enter the function f(x): ');
l = input('Enter the limits [a, b]: ');
a=l(1);b=l(2);
if subs(f,x,a) ~= subs(f,x,b)
	disp('f(a) is not equal to f(b) !');
else
	df = diff(f);
	c=solve(df);
 %{
	v = {};fc={};co=0;
	for i=c
		if i>a & i<b
    co = co + 1;
			v{co} = i;
			fc{co} = subs(f,x,i);
		end
	end
 v = [v{:}];fc=[fc{:}];
 %}
	v = [];fc =[];
	for k=1:length(c)
		if c(k)>a && c(k)<b
			v(end+1) = c(k);
			fc(end+1) = subs(f,x,c(k));
     	end
 	end
 
    xi = linspace(a,b,100);
	fi = subs(f,x,xi);
	plot(xi,fi,'b'),hold on,grid on;
	for i=1:length(fc)
		% yline(fc)
		plot(xi,fc(i)*ones(100),'r');
		plot(v(i),fc(i),'ok');
	end
 	hold off;
	xlabel('x-axis');ylabel('y-axis');
	legend('Function','Tangent');
	title('Rolle''s theorem')
end
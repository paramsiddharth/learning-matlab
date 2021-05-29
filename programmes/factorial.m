clc
clear all

n = input('Enter a number: ');
disp(sprintf('Factorial: %d',fact(n)));

function f = fact(a)
	f = 1;
	if a>1
		f = a*fact(a-1);
	end
end
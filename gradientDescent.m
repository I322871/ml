function [theta, count] = gradientDescent(x, y, a, f, cost)

[m, n] = size(x);
xMatrix = [ones(m, 1), x];
theta = zeros(n + 1, 1);
count = 0;
j = cost(xMatrix, y, theta);

while true  
  temp = theta - a / m * xMatrix' * (f(xMatrix, theta) - y);
	jTemp = cost(xMatrix, y, temp);
	
	if (jTemp >= j)
		disp('Cannot converge.');
		break;
	elseif ((j - jTemp) < 1e-6)
		break;
	else
    j = jTemp;
		theta = temp;
		count++;
	end
end

%scatter(x, y);
%hold on;
%f = theta(1) + theta(2) * x;
%plot(x, f);

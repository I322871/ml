function theta = gd2()

x0 = ones(6, 1);
x1 = [0;1;2;0;2;3];
x2 = [1;0;0;2;1;0];
y = [1;1;1;0;0;0];
xMatrix = [x0, x1, x2];
theta = zeros(3, 1);
a = 0.001;
m = length(x1);

for i = 1:100000
theta = theta - a / m * xMatrix' * (arrayfun(@(x) 1/(1+e^(-x)), (xMatrix * theta)) - y); 
end

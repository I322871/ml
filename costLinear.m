function j = costLinear(xMatrix, y, theta)

h = xMatrix * theta;
j = sum((h - y).^2) / 2 / length(y);

end
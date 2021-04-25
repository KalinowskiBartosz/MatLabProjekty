x = 0:1:360 ;
% albo po prostu 2*pi czy 0:2*pi, tylko wtedy wychodzi kanciaste
e = exp(1);
curve1 = 5 + sin(x);
curve2 = 2 + e.^(-x/3) .* sin(x);
plot(x, curve1, 'r', 'LineWidth', 3);
hold on;
plot(x, curve2, 'b', 'LineWidth', 3);
x2 = [x, fliplr(x)];
inBetween = [curve1, fliplr(curve2)];
fill(x2, inBetween, 'y');

N = 12
a = 0
b = pi * 2
x = linspace(a, b, N);
x = x.';
y = exp(-x / pi) .* sin(x);
h = x(2) - x(1);
D0 = 0 * eye(N);
D1 = diag(1 * ones(N-1, 1), 1);
D2 = diag(-1 * ones(N-1, 1), -1);
A(1, 1)= -2
A(1, 2) = 2
A(N, N-1) = -2
A(N, N) = 2
A = A/2/h;
figure (1);
clf;
plot(x,y);
hold all;
yp = y;
for k = 1:3
    yp = A * yp;
    plot(x, yp);
end
    
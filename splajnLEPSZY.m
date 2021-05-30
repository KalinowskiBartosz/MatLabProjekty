% definicja maks. liczby punktów, żeby nie było pętli bez końca
maxPoints = 20;
% limit współrzędnych
xLimits = [0 100];
yLimits = [0 100];
% nowa figura
figure(1)
xlim(xLimits)
ylim(yLimits)
hold on
%
% instrukcja dla użytkownika
disp('Naciśnij myszką gdziekolwiek w polu figure, po wybraniu punktów naciśnij ENTER.');
% zmuszenie do zapamiętania

% zbieraniae współrzęnych i ich wyświetlanie
x = [];
y = [];
t = [];
    % decyduj czy nowy punkt, czy koniec [ENTER]
    x_ginput = [1];
    %ginput(1)= [x, y]; zaczęło rozróżniać x oraz y, ale problem z wymiarem
    while ~isempty(x_ginput)
        [x_ginput, y_ginput] = ginput(1);
        x = [x ; x_ginput];
        y = [y ; y_ginput];
         plot(x, y, 'r.', 'LineWidth', 5, 'MarkerSize', 8);
    end
    
% zostawienie punktów
N = length(x);
M = 500
t = 0 : (N - 1);

plot(x ,y);
ti = linspace(t(1), t(end), M);
xi = interp1(t, x, ti, 'spline');
yi = interp1(t, y, ti, 'spline');

s = 0
for i = 2 : M
    ds = sqrt( (xi(i) - xi(i-1))^2 + (yi(i) - yi(i-1))^2);
    S = s + ds;
end
M
S

M = 2 * M
ti = linspace(t(1), t(end), M);
xi = interp1(t, x, ti, 'spline');
yi = interp1(t, y, ti, 'spline');

s = 0
for i = 2 : M
    ds = sqrt( (xi(i) - xi(i-1))^2 + (yi(i) - yi(i-1))^2);
    S = s + ds;
end
M
S


M = 2 * M
ti = linspace(t(1), t(end), M);
xi = interp1(t, x, ti, 'spline');
yi = interp1(t, y, ti, 'spline');

s = 0
for i = 2 : M
    ds = sqrt( (xi(i) - xi(i-1))^2 + (yi(i) - yi(i-1))^2);
    S = s + ds;
end
M
S
plot(xi, yi, 'b-o');
%  Wersja 2
%[xy, spcv] = getcurve
%[x, y] = ginput
%spcv = cscvn( [x, y].' )
%hold on
%fnplt (spcv)
%hold off
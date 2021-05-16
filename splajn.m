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
mousePointCoords = zeros(maxPoints,2);
% zbieraniae współrzęnych i ich wyświetlanie
count = 0;
for k = 1:maxPoints
    % decyduj czy nowy punkt, czy koniec [ENTER]
    [x, y] = ginput(1);
    if isempty([x, y])
        break
    end
    count = count + 1;
    mousePointCoords(count,:) = [x, y];
    plot(x, y, 'b.', 'LineWidth', 5, 'MarkerSize', 8);
    
end
% zostawienie punktów
hold off
mousePointCoords = mousePointCoords(1:count,:); % odcięcie niepotrzebnych wymiarów
% pokaż punkty
disp(mousePointCoords)
disp(plot([x, y]))





%  Wersja 2
%[xy, spcv] = getcurve
%[x, y] = ginput
%spcv = cscvn( [x, y].' )
%hold on
%fnplt (spcv)
%hold off
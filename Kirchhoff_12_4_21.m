Imax= 0.100 %wartość natężenia prądu w amperach
E1= 9.0; %wartość napięć w woltach
E2= 1.5;
R1= 1000; %wartość oporu w ohmach
R2= 1000; 
R3= 1000;
A = [
    -1  0 -1 +1  0
     0 -1 +1  0 -1
     R1 0  0  0  0
     0  R2 0  0  0
     0  0 R3  0  0
    ];
B= [
    0
    0
    E1
    E2
    (E1 - E2)
    ];
disp('natężenia prądów [w amperach]');
I= A \ B
if any(abs(I) >= Imax)
    disp('natężenie prądu przekroczone');
else
    disp('natężenie prądu w dopuszczalnym zakresie');
end
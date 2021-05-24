%filename is where I am getting the sound wav file from on my cpu, 
    %[y,Fs] = audioread('miauu.wav');
    %[y, Fs] = audioread('hauu.wav');
    %[y, Fs] = audioread('DieselNaZimnie.wav');
    [y, Fs] = audioread('dieselstart.wav');
whos y
sound(y,Fs);

a= 0;
b= Fs;
N = Fs; 

t= linspace(a, b, N);

Delta= t(2)-t(1);

f=(-N/2 : +N/2)' ./(N * Delta);
f=f';
F= Delta *fft(y);
F=F(:);
if mod(N, 2) == 0
    F = [F ; F(1)];
    F = fftshift(F);
else
    F = fftshift(F);
    F = [F ; F(1)];
end

fplus = f(f >= 0);
Fplus = F(f >= 0);

P = 2 * abs(Fplus).^2;

figure(1);
clf;
subplot(2,1,1); plot(y);
Ts = 1/50;
t = 0:Ts:10-Ts;   
Y = fft(y);   
fs = 1/Ts;
f = (0:length(Y)-1)*fs/length(Y);

Y=fftshift(Y)
subplot(2,1,2); plot(f,abs(Y))
xlabel('Częstotliwość (Hz)')
ylabel('Natężenie dźwięku')
title('Natężenie dźwięku')
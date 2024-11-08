function [x,t] = Reconstroi(X,f)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

fa = max(f)*2;
Ta = 1 / fa;
N = length(X);
x = ifft(ifftshift(X))*N;
t = (0:(N-1))*Ta;

plot(f,abs(X));
title('Espetro');
xlabel('Frequência (Hz)');
ylabel('Amplitude');
grid on;
end
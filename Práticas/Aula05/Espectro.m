function [X, f] = Espectro (x, Ta)
    
    %v Comprimento do sinal
    N = length(x);

    % Centra gráfico
    X = fftshift(fft(x))/N;

    Fa = 1 / Ta;

    f = (0:N-1) * Fa/N - Fa/2;

    plot(f,abs(X));
    title('Espetro');
    xlabel('Frequência (Hz)');
    ylabel('Amplitude');
    grid on;

end
function [Y,t] = ReconstroiSinal(x,Ta)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    

    N = length(x);
    
    
    % Frequência de amostragem
    fa = 1 / Ta;
    
    % 
    fs = 100 * fa;
    ts = 1 / fs;
    
    t = (0:((N*100)-1))*ts;
    
    Y = zeros(1, N*100);
    
    for n=1:N
        
        Y = Y + x(n).*sinc(fa.*(t-(n-1).*Ta));
    end
end
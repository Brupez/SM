
% plot trainning
x = [-2*pi:0];
y = sin(x).*exp(x);

plot(x,y,'r');
axis([-8 9 -0.5 0.8]);


%% function trainning
function res = ex(N, x);

S=zeros(size(x)) 
for n=1:N

    S = S + ((x^n)/(factorial(n))).*sin(n*pi/2)
end
end

x = linspace(0,2*pi,100)
ex(2,x)
ex(10,x)



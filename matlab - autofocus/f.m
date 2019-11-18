% Funkcja wyznacza watoœæ x z ustalonej funkcji rozk³adu Gaussa
function[y]=f(x) 
u = 0.5;
sigma = 1;
y = 1/sigma*sqrt(2*pi)*exp((-1)*((x-u).^2/(2*sigma^2)));
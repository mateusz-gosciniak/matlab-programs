clear all;
close all;

P = 5;
P0 = 1;
Kv = 40;

d1 = 0.032;
d2 = 0.027;
r1 = d1/2;
r2 = d2/2;
D1 = 0.9;
D2 = 0.7;
R1 = D1/2;
R2 = D2/2;

H1 = 1.9; % Wysokoœæ zbiornika
H2 = 1.55;
H10 = 0; % Pocz¹tkowy poziom wody, punkt równowagi - (fwe^2)/((Aw1^2)*(2*g))
Aw1 = pi*r1^2; % Powierzchnia otworu 
Aw2 = pi*r2^2;
g = 9.80665; % [m/s2] Grawitacja

t0 = 2; % Czas startu
Qwe = 1; % Q startowe

Hzad = 0.33; % Wysokoœæ zadana

open_system('gryfmodel.slx');
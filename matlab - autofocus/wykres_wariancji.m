function[wykres]=wykres_wariancji(Y,ZAKRES) 
wykres(1) = entropy(Y);
i = 2;
for r = 0.2:0.2:ZAKRES
    wykres(i) = wariancja(Y,r);
    i = i + 1;
end
end
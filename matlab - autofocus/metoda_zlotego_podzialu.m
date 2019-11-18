function[wynik]=metoda_zlotego_podzialu(a,b,Y)
e = 1; 
k = 0.618;
koszt = 0;

   xL = b - k * (b - a);
   xR = a + k * (b - a);
 f_xL = wariancja(Y,abs(xL)); 
koszt = koszt+1;
 f_xR = wariancja(Y,abs(xR));
koszt = koszt+1;

while (b-a) > e
   if f_xL > f_xR
           b = xR;
          xR = xL;
        f_xR = f_xL;
          xL = b - k * (b-a);
        f_xL = wariancja(Y,abs(xL));
       koszt = koszt+1;
   else
           a = xL;
          xL = xR;
        f_xL = f_xR;
          xR = a + k * (b-a);
        f_xR = wariancja(Y,abs(xR));
       koszt = koszt+1;
   end
end
wynik = wariancja(Y,abs((a+b)/2));
end
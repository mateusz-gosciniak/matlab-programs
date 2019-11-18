function[wynik]=entropia(Y,r) 
MASKA = fspecial('disk',r);
SPLOT = imfilter(Y,MASKA);
wynik = entropy(SPLOT);
%figure
%imshow(SPLOT)
end


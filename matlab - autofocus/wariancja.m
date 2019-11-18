function[wynik]=wariancja(Y,r) 
MASKA = fspecial('disk',r);
SPLOT = imfilter(Y,MASKA); 
wynik = var(double(SPLOT(:)));
figure
imshow(SPLOT)
end
RGB = imread('krajobraz.jpg');
%RGB = imread('architektura.jpg');
%RGB = imread('twarz.jpg');
YCbCr = rgb2ycbcr(RGB);
Y = YCbCr(:,:,1);
imshow(RGB)
metoda_zlotego_podzialu(-50,50,Y);
imshow(Y)

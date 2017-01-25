I = imread('10.jpg');
figure, imshow(I);

Ig = rgb2gray(I);
figure, imshow(Ig);

Ib = imbinarize(Ig, graythresh(Ig));
figure, imshow(Ib);

Ibuint8 = im2uint8(Ib);
Idiff = I-Ibuint8;
figure, imshow(Idiff);

Idiffo = I - Idiff;
figure, imshow(Idiffo);
I = imread('10.jpg');
figure, imshow(I);

Ib = im2bw(I, 0.99);
figure, imshow(Ib);

Ibuint8 = im2uint8(Ib);
Idiff = I-Ibuint8;
figure, imshow(Idiff);

Idiffo = I - Idiff;
figure, imshow(Idiffo);
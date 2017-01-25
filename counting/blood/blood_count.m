I = imread('blood1.jpg');
I = rgb2gray(I);
figure, imshow(I);

I2 = I;

I3 = imadjust(I2);
figure, imshow(I3);

Ib = imbinarize(I3, graythresh(I3));
figure, imshow(Ib);

Icmp = imcomplement(Ib);
figure, imshow(Icmp);

Ic = imfill(Icmp,'holes');
figure, imshow(Ic);

Io2 = imopen(Ic, strel('disk', 4));
cc = bwconncomp(Io2,4);
graindata = regionprops(cc, 'basic');
cc.NumObjects
figure, imshow(I);
 
hold on;
for m = 1:cc.NumObjects
    rectangle('Position', graindata(m).BoundingBox, 'EdgeColor', 'w');
end
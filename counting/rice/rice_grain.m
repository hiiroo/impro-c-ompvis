I = imread('rice.png');
figure, imshow(I);

bg = imopen(I, strel('disk', 15));
I2 = I-bg;
figure, imshow(I2);

I3 = imadjust(I2);
figure, imshow(I3);

Ib = imbinarize(I3, graythresh(I3));
figure, imshow(Ib);

Io = imopen(Ib, strel('disk', 4));
cc = bwconncomp(Io,4);
graindata = regionprops(cc, 'basic');
cc.NumObjects
figure, imshow(I);

hold on;
for m = 1:cc.NumObjects
    rectangle('Position', graindata(m).BoundingBox, 'EdgeColor', 'w');
end
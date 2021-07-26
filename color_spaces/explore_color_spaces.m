RGB = imread('image1.jpg');

h = size(RGB,1);
w = size(RGB,2);

% negative of the image
inverse = 255 - RGB;
% CIE color system
lab = rgb2lab(RGB);
% YCbCr color system
ycbcr = rgb2ycbcr(RGB);
% YIQ color system
YIQ = rgb2ntsc(RGB);
%% HSV system 
HSV = rgb2hsv(RGB);
SV = zeros(h,w,3);
SV(:,:,2) = HSV(:,:,2);
SV(:,:,3) = HSV(:,:,3);

% showing the results
figure, image(RGB);
figure, image(SV);
figure, imshow(YIQ);
figure, imshow(ycbcr);

figure, imshow(HSV(:,:,1));
figure, imshow(HSV(:,:,2));
figure, imshow(lab(:,:,1),[0 100]);
figure, image(HSV);
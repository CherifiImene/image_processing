RGB = imread('image1.jpg');

h = size(RGB,1);
w = size(RGB,2);
z = zeros(h,w,"uint8");

% grayscale channels
R = z; G = z; B = z;
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

% colored channels
just_red = cat(3, R, z, z);
just_green = cat(3, z, G, z);
just_blue = cat(3, z, z, B);

% reconstruct colored image
reconstructedRGB = cat(3,R,G,B);

figure, imshow(RGB);
figure, imshow(just_red);
figure, imshow(just_green);
figure, imshow(just_blue);
figure, imshow(reconstructedRGB);

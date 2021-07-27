img = imread("my_images/cameraman.jpg");
%% Original grayscaale image (2d dimensions)
figure, imshow(img);
%% Binarize the image to get a uniform result
binaryImg = imbinarize(img);
figure, imshow(binaryImg);
% Sobel Gradient
sobelXFilter = [-1 0 1;
                -2 0 2;
                -1 0 1];
sobelYFilter = [-1 -2 -1;
                0 0 0;
                1 2 1];
Gx = conv2(binaryImg,sobelXFilter,"same");
Gy = conv2(binaryImg,sobelYFilter,"same");

magnitude = sqrt(Gx.^2+Gy.^2);
gradientDirection = atan(Gy./Gx);

%% X gradient 
figure, imshow(Gx);
%% Y gradient 
figure, imshow(Gy);
%% gradientDirection
figure, imshow(gradientDirection);
%% edges of the original image 
figure, imshow(magnitude);


%% note the code above could be replaced by the following instruction
%% [Gx, Gy] = imgradient(img,"sobel");
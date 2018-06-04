close all
I = imread('timg.jpg');
BW1 = im2bw(I);
BW2 = im2bw(I,0.3);
BW3 = im2bw(I,0.6);
Gray = rgb2gray(I);
imwrite(Gray,'Gray.jpg')
size(I)
size(BW1)
size(BW2)
size(BW3)
size(Gray)
figure
subplot(3,2,1),imshow(I);
title('original');
subplot(3,2,2),imshow(BW1);
title('\default');
subplot(3,2,3),imshow(BW2);
title('level=0.3');
subplot(3,2,4),imshow(BW3);
title('level=0.6')
subplot(3,2,5),imshow(Gray);
title('gray')
figure(2)
subplot(1,2,1)
imhist(Gray)
subplot(1,2,2)
imhist(Gray,8)
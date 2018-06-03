I = imread('timg.jpg');
BW1 = im2bw(I);
BW2 = im2bw(I,0.3);
BW3 = im2bw(I,0.6);
figure
subplot(2,2,1),imshow(I);
title('original');
subplot(2,2,2),imshow(BW1);
title('\default');
subplot(2,2,3),imshow(BW2);
title('level=0.3');
subplot(2,2,4),imshow(BW3);
title('level=0.6')
close all
I = imread('timg.jpg');
[x,y,z] = size(I);

figure
subplot(2,2,1)
imshow(I);
title('original image')

%R
R = I;
R(:,:,2)=zeros(x,y);
R(:,:,3)=zeros(x,y);
R = uint8(R);
subplot(2,2,2),imshow(R);
title('Red component')
%G
G = I;
G(:,:,1)=zeros(x,y);
G(:,:,3)=zeros(x,y);
G = uint8(G);
subplot(2,2,3),imshow(G);
title('Green component')
%B
B = I;
B(:,:,1)=zeros(x,y);
B(:,:,2)=zeros(x,y);
B = uint8(B);
subplot(2,2,4),imshow(B);
title('Blue component')

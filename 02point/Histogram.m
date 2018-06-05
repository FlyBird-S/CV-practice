close all
I = imread('timg.jpg');
Gray = rgb2gray(I);
imwrite(Gray,'Gray.jpg')
figure
subplot(2,2,1)
imhist(Gray)
subplot(2,2,2)
imhist(Gray,64)
subplot(2,2,3)
[m,n] = size(Gray);
[counts1,x] = imhist(Gray,32);
stem(x,counts1);
counts2 = counts1/m/n;
subplot(2,2,4)
stem(x,counts2)

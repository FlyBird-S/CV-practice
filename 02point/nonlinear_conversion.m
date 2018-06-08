close all
i = imread('night.jpg');
i = rgb2gray(i);
%对数变换拓展低灰度压缩高灰度
%指数变换与其相反
figure(1)
subplot(2,3,1), imshow(i),title('origin');
subplot(2,3,2), imhist(i),title('origin');
display('runing');
i = double(i);
out1 = log(1+i)/0.065;
out2 = log(1+i)/0.035;%默认底数为e=2.71828
out1(out1>255) = 255;
out2(out2>255) = 255;
out1 = uint8(out1);
out2 = uint8(out2);
display('ploting');
subplot(2,3,3), imshow(out1),title('b=0.065');
subplot(2,3,4), imhist(out1),title('b=0.065');
subplot(2,3,5), imshow(out2),title('b=0.035');
subplot(2,3,6), imhist(out2),title('b=0.035');
display('ok')


% %幂次变换 将部分区域灰度映射到更宽的区域
% figure(2)
% i = double(i);
% y1 = 255*(i/255).^2.5;
% y2 = 255*(i/255).^0.4;
% y1 = uint8(y1);
% y2 = uint8(y2);
% subplot(2,2,1),imshow(y1),title('2.5');
% subplot(2,2,2),imhist(y1),title('2.5')
% subplot(2,2,3),imshow(y2),title('0.4');
% subplot(2,2,4),imhist(y2),title('0.4')
% %imadjust(I,[],[],gama) gama为幂指数小于一放大底处
% histeq(I,P) 是灰度均衡化处理 ,P为参考图像可缺省

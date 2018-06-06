close all
I = imread('te.jpg');
I = rgb2gray(I);
[m,n] = size(I);
figure(1),subplot(2,3,1),imshow(I);
title('origin')
figure(2),subplot(2,3,1),[H,x]=imhist(I,64);
stem(x,(H/m/n),'.');%归一化处理
title('origin')

%增加对比度
k = 1.25;
d = 0;
O = k.*I+d; 
figure(1),subplot(2,3,2),imshow(O);
title('k=1.25,d=0 contrast increasing');
figure(2),subplot(2,3,2),[H,x]=imhist(O,64);
stem(x,(H/m/n),'.');%归一化处理
title('k=1.25,d=0 contrast increasing');

%减小对比度
k = 0.5;
d = 0;
O = k.*I+d; 
figure(1),subplot(2,3,3),imshow(O);
title('k=0.5,d=0 contrast decreasing');
figure(2),subplot(2,3,3),[H,x]=imhist(O,64);
stem(x,(H/m/n),'.');%归一化处理
title('k=0.5,d=0 contrast decreasing');

%线性增加亮度
k = 1;
d = 50;
O = k.*I+d; 
figure(1),subplot(2,3,4),imshow(O);
title('k=1,d=50 brighrness increasing');
figure(2),subplot(2,3,4),[H,x]=imhist(O,64);
stem(x,(H/m/n),'.');%归一化处理
title('k=1,d=50 brighrness increasing');

%负片
k = -1;
d = 255;
O = k.*im2int16(I)+d;  %不能使用默认的无符号int
figure(1),subplot(2,3,5),imshow(O);
title('k=-1,d=255 reversal processing');
figure(2),subplot(2,3,5),[H,x]=imhist(O,64);
stem(x,(H/m/n),'.');%归一化处理
title('k=-1,d=255 reversal processing');


figure(1),subplot(2,3,6),imshow(I);
title('origin')
figure(2),subplot(2,3,6),[H,x]=imhist(I,64);
stem(x,(H/m/n),'.');%归一化处理
title('origin')
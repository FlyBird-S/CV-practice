I = imread('timg.jpg');
[height , width , dim] = size(I);
tform = maketform('affine',[-1,0,0;0,-1,0;width,0,1]);%构造映射矩阵
tform2 = affine2d([1,0,0;0,-1,0;0,height,1]);%代替maketform
B = imtransform(I,tform,'nearest');
C = imwarp(B,tform2);%代替imtransform
figure(1);
subplot(2,2,1),imshow(I);
subplot(2,2,2),imshow(B);
subplot(2,2,3),imshow(C);
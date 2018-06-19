close all
I = imread('timg.jpg');
I = double(I);
B = zeros(size(I));%创建一个新的画布
H = size(I);
move_x = 100;
move_y = 100;
B(1+move_y:H(1),1+move_x:H(2),1:H(3))=I(1:H(1)-move_y,1:H(2)-move_x,1:H(3));
subplot(2,2,1),subimage(uint8(I));
subplot(2,2,2),subimage(uint8(B));
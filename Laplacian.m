clear; clc;

a = imread('color.jpg');
a = rgb2gray(a);
a = double(a);
[m,n] = size(a);

b(1:m,1:n) = 0;

for i = 2:m-1
    for j = 2:n-1
        b(i,j) = 5*a(i,j)-a(i-1,j)-a(i+1,j)-a(i,j-1)-a(i,j+1);
    end
end

b = uint8(b);
imwrite(b,'laplace.jpg');
imshow('laplace.jpg')
% Reading the image
I1 = imread('color.jpg');
%converting to gray scale
GRAY = rgb2gray(I1);
figure,
imshow(GRAY),
title('Gray Image');
threshold = graythresh(GRAY);
% converting to B&W
BW = im2bw(GRAY, threshold);
figure,
imshow(BW),
title('Binary Image ');
%Inverting the image
BW = ~ BW;
figure,
imshow(BW),
title('Inverted Binary Image');

%initialising j=0 for number of circles
j=0;
[label,n]=bwlabel(BW);
n
s=regionprops(label,'all');
%imshow(BW);
%testing for figure condition for the detected n number of shapes
for (i=1:n)
area=s(i).Area;
peri=s(i).Perimeter;
area=double(area)
peri=double(peri)
aspect= (peri*peri)/area;
aspect
% for a circle aspect= [(2*pi*r)*(2*pi*r)]/pi*r*r=12.46 < 15 
%for a square aspect = 4s*4s/s*s = 16 >15
if (aspect < 15)
    ('Image is a circle')
    %incrementing the number of circles
    j=j+1;
    
else 
    ('Image is a square')
end
end
('number of circles = ')
j-0
('number of squares = ')
n-j


    
    

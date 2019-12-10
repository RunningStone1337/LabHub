% 1
mat1 = imread('G:/1.png')
%2
noise = imnoise(mat1,'gaussian')
%3
shum = figure('visible','off')
hist = histogram(noise)
saveas(hist, '3', 'png')
close(shum)
%4
oval = im2double(imread('G:/oval.png'))
centralfigure = merge(oval, noise, 330, 353)
imwrite(centralfigure, '2.png')
%5
Neighoval = imresize3(oval, 0.5, 'nearest') 
centralfigure = merge(Neighoval, noise, 330, 353) 
imwrite(centralfigure, 'NeighborCenter.png')
bigoval = imresize(oval, 2) 
centralfigure = merge(bigoval, noise, 330, 353) 
imwrite(centralfigure, 'BigCenter.png') 
Cubeoval = imresize3(oval, 3, 'cubic') 
centralfigure = merge(Cubeoval, noise, 190, 220)
imwrite(centralfigure, 'CubeCenter.png') 
%6
Gauss = imnoise(noise, 'gaussian', 0, 0)
eye = im2double(imread('eye.png'))
triangle = im2double(imread('triangle.png'))
eye = imresize3(eye, 2, 'nearest')
triangle = imresize3(triangle, 2, 'nearest')
Gauss = merge(eye, Gauss, 5, 5)
Gauss = merge(triangle, Gauss, 400, 500)
imwrite(Gauss, '6.png')
%7
imwrite(flip(Gauss,2), '7.png')
%8
imwrite(flip(Gauss), '8.png')
%9
imwrite(imrotate(Gauss, 315), '9.png')
%10
imwrite(imrotate(Gauss, 45), '10.png')
%11
ground = imread('Clint.jpg')
%12
imwrite(imcrop(ground, [100 50 799 799]), '12.png')
%13
imwrite(imcrop(ground, [100 50 799 799])*0.25, '13.png')
%14
Mistake = imcrop(ground, [100 50 799 799])*0.25
Mistake = rgb2gray(Mistake)
Mistake = im2double(Mistake)
Mistake = merge(eye, Mistake, 5, 5)
Mistake = merge(triangle, Mistake, 350, 420)
MistakePic = imnoise(Mistake, 'gaussian', 0, 0)
imwrite(MistakePic, '14.png')
%15
Mistake1 = MistakePic 
for i = 1:size(Mistake1,1) 
for j = 1:size(Mistake1,2) 
Mistake1(i,j) = 1-Mistake1(i,j); 
end 
end 
imwrite(Mistake1, '15.png')
%16
Mistake = imcrop(ground, [330 90 799 799])*0.58 
Mistake = rgb2gray(Mistake)
Mistake = im2double(Mistake)
Mistake = merge(eye, Mistake, 5, 5)
Mistake2 = imnoise(Mistake, 'gaussian',  5, 5)
imwrite(Mistake2, '16.png')
%17
imwrite(Mistake2-Mistake1, '17.png')
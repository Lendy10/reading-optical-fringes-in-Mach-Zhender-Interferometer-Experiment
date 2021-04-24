% Read interference fringes
% 5 images are read in this example
clear all
format long


%location
% In the example, the image type is MIM.
name0='L:\Penelitian\fringe calculation\Fringes';                                                                                      
E0=imread([name0 '\' 'RG0.mim'],1);
E1=imread([name0 '\' 'RG1.mim'],1);
E2=imread([name0 '\' 'RG2.mim'],1);
E3=imread([name0 '\' 'RG3.mim'],1);
E4=imread([name0 '\' 'RG4.mim'],1);


% Adjust the brightness of the images
r=1;
rr=1;

E0=E0*rr;
E1=E1*r;
E2=E2*rr;
E3=E3*r;
E4=E4*r;


% Pick up a part from the whole image
L=1;     % left
R=1024;  % right
T=1;     % top
B=1024;  % below

% convert to double for calculation
E00=im2double(E0(T:B,L:R));
E11=im2double(E1(T:B,L:R));
E22=im2double(E2(T:B,L:R));
E33=im2double(E3(T:B,L:R));
E44=im2double(E4(T:B,L:R));


% Gaussian filter

f4=200;
f5=100;


F0=filter2(fspecial('gaussian',[f4 f4],f5),E00);

F1=filter2(fspecial('gaussian',[f4 f4],f5),E11);

F2=filter2(fspecial('gaussian',[f4 f4],f5),E22);

F3=filter2(fspecial('gaussian',[f4 f4],f5),E33);

F4=filter2(fspecial('gaussian',[f4 f4],f5),E44);


% show images
figure
imshow(F0,[0,0.05])
figure
imshow(F1,[0,0.05])
figure
imshow(F2,[0,0.05])
figure
imshow(F3,[0,0.05])
figure
imshow(F4,[0,0.05])



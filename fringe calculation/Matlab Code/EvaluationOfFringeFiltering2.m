% Evaluation of fringe filtering

% 5 original fringes, which are E00, E11, E22, E33, E44
% 5 filtered fringes, which are F0, F1, F2, F3, F4

% Plot original fringes
figure
subplot(3,8,1)
imshow(E00,[0,0.05])
subplot(3,8,2)
imshow(E11,[0,0.05])
subplot(3,8,3)
imshow(E22,[0,0.05])
subplot(3,8,4)
imshow(E33,[0,0.05])
subplot(3,8,5)
imshow(E44,[0,0.05])
subplot(3,8,6)
imshow(E55,[0,0.05])
subplot(3,8,7)
imshow(E66,[0,0.05])
subplot(3,8,8)
imshow(E77,[0,0.05])


hold on

% Plot filtered fringes
subplot(3,8,9)
imshow(F0,[0,0.05])
subplot(3,8,10)
imshow(F1,[0,0.05])
subplot(3,8,11)
imshow(F2,[0,0.05])
subplot(3,8,12)
imshow(F3,[0,0.05])
subplot(3,8,13)
imshow(F4,[0,0.05])
subplot(3,8,14)
imshow(F5,[0,0.05])
subplot(3,8,15)
imshow(F6,[0,0.05])
subplot(3,8,16)
imshow(F7,[0,0.05])

% Plot residual fringes
subplot(3,8,17)
imshow(E00-F0,[0,0.05])
subplot(3,8,18)
imshow(E11-F1,[0,0.05])
subplot(3,8,19)
imshow(E22-F2,[0,0.05])
subplot(3,8,20)
imshow(E33-F3,[0,0.05])
subplot(3,8,21)
imshow(E44-F4,[0,0.05])
subplot(3,8,22)
imshow(E55-F5,[0,0.05])
subplot(3,8,23)
imshow(E66-F6,[0,0.05])
subplot(3,8,24)
imshow(E77-F7,[0,0.05])


% A line of pixels
EP=E00(118,:);
FP=F0(130,:);
pixel=L:R;
figure
plot(pixel,EP,'r',pixel,FP,'b','LineWidth',3)

Res=(EP-FP);
hold on
plot(pixel, Res)

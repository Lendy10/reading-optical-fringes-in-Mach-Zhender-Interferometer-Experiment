% Evaluation of fringe filtering

% 5 original fringes, which are E00, E11, E22, E33, E44
% 5 filtered fringes, which are F0, F1, F2, F3, F4

% Plot original fringes
figure
subplot(3,5,3)
imshow(E00,[0,0.05])
subplot(3,5,1)
imshow(E11,[0,0.05])
subplot(3,5,2)
imshow(E22,[0,0.05])
subplot(3,5,4)
imshow(E33,[0,0.05])
subplot(3,5,5)
imshow(E44,[0,0.05])

hold on

% Plot filtered fringes
subplot(3,5,8)
imshow(F0,[0,0.05])
subplot(3,5,6)
imshow(F1,[0,0.05])
subplot(3,5,7)
imshow(F2,[0,0.05])
subplot(3,5,9)
imshow(F3,[0,0.05])
subplot(3,5,10)
imshow(F4,[0,0.05])

% Plot residual fringes
subplot(3,5,13)
imshow(E00-F0,[0,0.05])
subplot(3,5,11)
imshow(E11-F1,[0,0.05])
subplot(3,5,12)
imshow(E22-F2,[0,0.05])
subplot(3,5,14)
imshow(E33-F3,[0,0.05])
subplot(3,5,15)
imshow(E44-F4,[0,0.05])


% A line of pixels
EP=E00(512,:);
FP=F0(512,:);
pixel=L:R;
figure
plot(pixel,EP,'r',pixel,FP,'b','LineWidth',3)
datacursormode('on')
Res=(EP-FP);
hold on
plot(pixel, Res)
title('Analisis Distribusi Intensitas Perhitungan Frinji');
xlabel('pixel');
ylabel('Intensity/arbitary units');
legend('Original','Gaussian','Residual');
set(gca, 'FontName', 'Times New Roman');


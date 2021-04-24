% Evaluation a phse calculation

% Choose how many pixels to monitor
num=floor((RR-LL)./2);

%L to R
figure
subplot(2,2,1)
plot(phase(num,:))

subplot(2,2,2)
plot(a(num,:),'r')
hold on
plot(b(num,:),'g')


subplot(2,2,3)
plot(aphase(num,:))

subplot(2,2,4)
plot(aaphase(num,:))



% T to B
figure
subplot(2,2,1)
plot(phase(:,num))

subplot(2,2,2)
plot(a(:,num),'r')
hold on
plot(b(:,num),'g')


subplot(2,2,3)
plot(aphase(:,num))

subplot(2,2,4)
plot(aaphase(:,num))
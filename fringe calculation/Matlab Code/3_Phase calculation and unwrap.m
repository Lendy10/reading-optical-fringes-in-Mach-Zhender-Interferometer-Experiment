% Interference phase from Carre algorithm
format long
clear phase             % calculated phase in [0, pi/2]
clear aphase            % unwraped phase in [-pi, pi]
clear aaphase           % unwraped phase


% Choose a part of image
LL=101;     % left pixel
RR=924;     % right pixel
TT=101;     % top pixel
BB=924;     % bottom pixel

I0=F0(TT:BB,LL:RR);
I1=F1(TT:BB,LL:RR);
I2=F2(TT:BB,LL:RR);
I3=F3(TT:BB,LL:RR);
I4=F4(TT:BB,LL:RR);


% Carre algorithm
q1=sqrt(abs((3.*I2-3.*I3-I1+I4).*(I1+I2-I3-I4)));
q2=abs(I1-I2-I3+I4);

phase=q2;

% Signs of pixels
a=I2-I3;
b=I1+I4-I2-I3;

% Unwrap
P=find(a<0);
sign_a=ones(length(q2),length(q2));
sign_a(P)=-1;
Q=find(b<0);
sign_b=ones(length(q2),length(q2));
sign_b(Q)=-1;

sign_a=1i*sign_a;
q=q2.*sign_b+q1.*sign_a;
aphase=angle(q);

aaphase=unwrap(aphase);
aaphase=unwrap(aaphase')';

            
            
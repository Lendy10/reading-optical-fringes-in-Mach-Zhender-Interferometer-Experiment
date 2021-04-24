% Show distance results

format long
clear absolutedistance_gap
clear x
clear y

% Convert pixels to distance
h=45/(230-45);
pixel=6.45;
b=1./3;

% Choose how many pixels to show
LLL=201;     
RRR=824;     
TTT=201;     
BBB=824;    

[X,Y]=meshgrid(TTT:BBB,LLL:RRR);       
x=X.*h.*pixel.*b;                      

lamda=632.991;                                      % laser wavelength
distance=(phase./(2.*pi)).*(lamda./2);
adistance=(aphase./(2.*pi)).*(lamda./2);
padistance=(paphase./(2.*pi)).*(lamda./2);          % unwraped distance in a range of [0,lamda/2]
aadistance=(aaphase./(2.*pi)).*(lamda./2);

% show distance distribution

figure   
pcolor(x,y,padistance(TTT-TT+1:BBB-TTT+TTT-TT+1,LLL-LL+1:RRR-LLL+LLL-LL+1))
shading interp
axis equal
colorbar;
xlabel('Micrometer')
ylabel('Micrometer')
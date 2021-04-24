% Show phase results

format long
clear absolutephase_gap
clear x
clear y

% Convert pixels to length according to the imaging system
h=45/(230-45);
pixel=6.45;
b=1/3;

% Choose how many pixels to show
LLL=201;     
RRR=824;     
TTT=201;    
BBB=824;    

[X,Y]=meshgrid(TTT:BBB,LLL:RRR);   % Generate 2D meshgrid
x=X.*h.*pixel.*b;                   
y=Y.*h.*pixel.*b;

paphase=aphase+pi;    % Convert phase to [0, 2pi]

% Show phase results
figure 
pcolor(x,y,paphase(TTT-TT+1:BBB-TTT+TTT-TT+1,LLL-LL+1:RRR-LLL+LLL-LL+1))
shading interp
axis equal
colorbar;
xlabel('Micrometer')
ylabel('Micrometer')
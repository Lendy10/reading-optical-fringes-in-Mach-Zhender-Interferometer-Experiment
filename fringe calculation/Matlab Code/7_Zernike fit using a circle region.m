% Zernike fit using a circle region
clear z_opt
clear A
clear z_opt_final

% Data to fit
A=padistance;

% Zernike order
order=6;
if order==12
    N=37;
else
    N=((order/2)+1).^2;
end

% choose a circle region
r=4;
x0=424; % center pixel
y0=422; % center pixel
se=strel('disk',r,0);% mark a circle region
mark=getnhood(se);
select=mark.*A(x0-r:x0+r,y0-r:y0+r);
[I,J]=find(mark);
K=find(mark);
X=(J-r-1)./r;
Y=(I-r-1)./r;
num=length(X);
Z=zeros(num,N);
Z(:,1)=ones(num,1);

% generate Zernike
for i=1:N-1
    Z(:,i+1)=zernikefun(X,Y,i);
end¯
Yi=select(K);

% fit
P=Z'*Z;
b=Z'*Yi;
zer_coef=P\b;

% evaluation
except=zer_coef(1)*Z(:,1)+zer_coef(2)*Z(:,2)+zer_coef(3)*Z(:,3)+zer_coef(4)*Z(:,4);
z_opt=Z*zer_coef-except;                            
residual=Yi-except-z_opt;
RMS=sqrt(sum(residual.*residual)/num);
PV=max(residual)-min(residual);

% evaluation results
select_final=NaN*ones(2*r+1,2*r+1);
except_final=NaN*ones(2*r+1,2*r+1);
z_opt_final=NaN*ones(2*r+1,2*r+1);                
residual_final=NaN*ones(2*r+1,2*r+1);
select_final(K)=Yi;
except_final(K)=except;
z_opt_final(K)=z_opt;
residual_final(K)=residual;

% Plot results
figure
pcolor(select_final)
title('Origin')
shading interp
colormap(Jet(500))
colorbar

%figure
%pcolor(residual_final)
%title('ÄâºÏ²Ð²î')
%shading interp
%colormap(Jet(500))
%colorbar
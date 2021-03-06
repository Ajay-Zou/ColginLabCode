function [t]=wc(m,rho,theta0,ant,deg);
%
% Generates random numbers from the m modal wrapped Cauchy distribution on the circle.
%
% CALL: wc(m,tau,mu,size,deg); 
%
% where 
%
%     tau    = concentration parameter, real number [0,1],
%     mu = mean direction,
%     size   = sample size,
%     deg    = 'deg' if direction in degrees.
%
% Copyright 1993, Bjorn Holmquist, Dept of Math. Stat., Universty of Lund.
%
if (nargin<=3), ant=1
end
  rhom=exp(log(rho)/m);
  r=(1+rhom*rhom)/(2.0*rhom);
for i=1:ant,
%  a=1+sqrt(1+4.0*k*k); 
%  b=0.5*(a-sqrt(2.0*a))/k;
%  c=0.5*(1+b*b)/b;
%  d=cos(pi*rand(1,1)); e=(1.0+c*d)/(c+d); d=k*(c-e);
  z=cos(pi*rand(1,1)); f=(1.0+r*z)/(r+z);
%  f=rand(1,1); 
%  while (log(d/f)<d-1) %(d*(2/d)<=f)
%    a=1+sqrt(1+4.0*k*k); 
%    b=0.5*(a-sqrt(2.0*a))/k;
%    c=0.5*(1+b*b)/b;
%    d=cos(pi*rand(1,1)); e=(1.0+c*d)/(c+d); d=k*(c-e);
%    f=rand(1,1); 
%  end
%  theta=acos(e);
%  if (e<0) 
%    theta=theta+0.5*pi;
%  end
%  if (rand(1,1)<0.5) 
%    theta=-theta;
%  end
%  theta=acos(f)/m;
  theta=acos(f);
  if (rand(1,1)<0.5),
    theta=-theta;
  end
   theta=theta+floor(m*rand(1,1))*2*pi/m+theta0;
  if (nargin==5)
    if (deg(1:3)=='deg')
      theta=180*theta/pi;
    end
  end
  t(i,1)=theta; %+theta0;
end









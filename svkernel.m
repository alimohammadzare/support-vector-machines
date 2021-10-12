function k = svkernel(ker,u,v,dovom,sevom,chaharom)
%_________________________________
% Ali Mohammad Zare & Omid Nasiri
%_________________________________
%
%SVKERNEL kernel for Support Vector Methods
%
%  Usage: k = svkernel(ker,u,v)
%
%  Parameters: ker - kernel type
%              u,v - kernel arguments
%
%  Values for ker: 'linear'        -
%                  'polynomial'    - dovom is degree of polynomial
%                  'rbf'           - dovom is width of rbfs (sigma)
%                  'sigmoid'       - dovom is scale, sevom is offset
%                  'spline'        -
%                  'bspline'       - dovom is degree of bspline
%                  'fourier'       - dovom is degree
%                  'erfb'          - dovom is width of rbfs (sigma)
%                  'anova'         - dovom is max order of terms
  if (nargin < 1) % check correct number of arguments
     help svkernel
  else
    % could check for correct number of args in here
    % but will slow things down further
    switch lower(ker)
      case 'linear'
        k = u*v';
      case 'polynomial'
        k = (dovom*(u*v')+sevom)^chaharom;
      case 'rbf'
        k = exp(-(u-v)*(u-v)'/(2*dovom^2));
      case 'erbf'
        k = exp(-sqrt((u-v)*(u-v)')/(2*dovom^2));
      case 'sigmoid'
        k = tanh(dovom*(u*v')/length(u) + sevom);
       case 'spline'
         z = 1 + u.*v + (1/2)*u.*v.*min(u,v) - (1/6)*(min(u,v)).^3;
         k = prod(z);
       case 'bspline'
         z = 0;
         for r = 0: 2*(dovom+1)
           z = z + (-1)^r*binomial(2*(dovom+1),r)*(max(0,u-v + dovom+1 - r)).^(2*dovom + 1);
         end
         k = prod(z);
       case 'anovaspline1'
         z = 1 + u.*v + u.*v.*min(u,v) - ((u+v)/2).*(min(u,v)).^2 + (1/3)*(min(u,v)).^3;
         k = prod(z); 
       case 'anovaspline2'
         z = 1 + u.*v + (u.*v).^2 + (u.*v).^2.*min(u,v) - u.*v.*(u+v).*(min(u,v)).^2 + (1/3)*(u.^2 + 4*u.*v + v.^2).*(min(u,v)).^3 - (1/2)*(u+v).*(min(u,v)).^4 + (1/5)*(min(u,v)).^5;
         k = prod(z);
       case 'anovaspline3'
         z = 1 + u.*v + (u.*v).^2 + (u.*v).^3 + (u.*v).^3.*min(u,v) - (3/2)*(u.*v).^2.*(u+v).*(min(u,v)).^2 + u.*v.*(u.^2 + 3*u.*v + v.^2).*(min(u,v)).^3 - (1/4)*(u.^3 + 9*u.^2.*v + 9*u.*v.^2 + v.^3).*(min(u,v)).^4 + (3/5)*(u.^2 + 3*u.*v + v.^2).*(min(u,v)).^5 - (1/2)*(u+v).*(min(u,v)).^6 + (1/7)*(min(u,v)).^7;
         k = prod(z);
    end

  end

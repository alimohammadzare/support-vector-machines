function tol = svtol(C)
%_________________________________
% Ali Mohammad Zare & Omid Nasiri
%_________________________________
%
%SVTOL Tolerance for Support Vectors
%
%  Usage: tol = svtol(C)
%
%  Parameters: C      - upper bound 
%
  if (nargin ~= 1) % check correct number of arguments
    help svtol
  else
% tolerance for Support Vector Detection
    if C==Inf 
      tol = 1e-5;
    else
      tol = C*1e-6;
    end
    
  end

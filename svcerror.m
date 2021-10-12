function err = svcerror(trnX,trnY,tstX,tstY,ker,alpha,b0)
%_________________________________
% Ali Mohammad Zare & Omid Nasiri
%_________________________________
%
%SVCERROR Calculate SVC Error
%
%  Usage: err = svcerror(trnX,trnY,tstX,tstY,ker,alpha,b0)
%
%  Parameters: trnX   - Training inputs
%              trnY   - Training targets
%              tstX   - Test inputs
%              tstY   - Test targets
%              ker    - kernel function
%              beta   - Lagrange Multipliers
%              b0   - bias
%

  if (nargin ~= 7) % check correct number of arguments
    help svcerror
  else

    n = size(trnX,1);
    m = length(tstY);
    H = zeros(m,n);  
    for i=1:m
      for j=1:n
        H(i,j) = trnY(j)*svkernel(ker,tstX(i,:),trnX(j,:));
      end
    end
    predictedY = sign(H*alpha + b0);
    err = sum(predictedY ~= tstY);

  end

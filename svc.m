function [nsv, alpha, b0,W] = svc(X,Y,ker,C,dovom,sevom,chaharom)
%_________________________________
% Ali Mohammad Zare & Omid Nasiri
%_________________________________
%
%  Usage: [nsv alpha b0] = svc(X,Y,ker,C)
%
%  Parameters: X      - Training inputs
%              Y      - Training targets
%              ker    - kernel function
%              C      - upper bound (non-separable case)
%              nsv    - number of support vectors
%              alpha  - Lagrange Multipliers
%              b0     - bias term
%
    n = size(X,1);
    if (nargin<4) C=Inf;, end
    if (nargin<3) ker='linear';, end

    % tolerance for Support Vector Detection
    epsilon = svtol(C);
    
    % Construct the Kernel matrix
    H = zeros(n,n);  
    for i=1:n
       for j=1:n
          H(i,j) = Y(i)*Y(j)*svkernel(ker,X(i,:),X(j,:),dovom,sevom,chaharom);
       end
    end
    c = -ones(n,1);  

    % Add small amount of zero order regularisation to 
    % avoid problems when Hessian is badly conditioned. 
    H = H+1e-10*eye(size(H));
    
    % Set up the parameters for the Optimisation problem

    vlb = zeros(n,1);      % Set the bounds: alphas >= 0
    vub = C*ones(n,1);     %                 alphas <= C
    x0 = zeros(n,1);       % The starting point is [0 0 0   0]
    neqcstr = nobias(ker); % Set the number of equality constraints (1 or 0)  
    if neqcstr
       A = Y';, b = 0;     % Set the constraint Ax = b
    else
       A = [];, b = [];
    end

    % Solve the Optimisation Problem
    [alpha lambda how] = qp(H, c, A, b, vlb, vub, x0, neqcstr);
    W=0;
    for(i=1:n)
        mata=alpha(i)*Y(i);
        matb=mata*X(i,:);      
        W=W+matb;
       
    end
    
    w2 = alpha'*H*alpha;
    
        
    % Compute the number of Support Vectors
    svi = find( alpha > epsilon);
    nsv = length(svi);

    % Implicit bias, b0
    b0 = 0;
    if nobias(ker) ~= 0
      % find b0 from average of support vectors on margin
      % SVs on margin have alphas: 0 < alpha < C
      svii = find( alpha > epsilon & alpha < (C - epsilon));
      if length(svii) > 0
        b0 =  (1/length(svii))*sum(Y(svii) - H(svii,svi)*alpha(svi).*Y(svii));
      else 
        fprintf('No support vectors on margin - cannot compute bias.\n');
      end
    end
    
  
 
    

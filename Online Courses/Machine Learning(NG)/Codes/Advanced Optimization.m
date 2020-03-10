function [jVal, gradient] = costFuntion(theta)
  jVal = (theta(1)-5)^2 + (theta(2)-5)^2;
  gradient = zeros(2,1);
  gradient(1) = 2*(theta(1)-5);
  gradient(2) = 2*(theta(2)-5);
endfunction

options = optimset('Gradobj','on','MaxIter','100');
inititalTheta = zeros(2,1);
[opTheta, functionVal,exitFlag]=fminunc(@costFuntion,inititalTheta,options)

%theta must be 2D or 1D to work out
function y = yClassification(xMatrix, theta)
  
  y = arrayfun(@(x) 1 / (1 + e ^ (-x)), (xMatrix * theta));
  
endfunction

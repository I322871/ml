function j = costClassification(xMatrix, y, theta)
  
  j = 1 / length(y) * (-y' * arrayfun(@log, yClassification(xMatrix, theta)) -
    (1 - y)' * arrayfun(@log, 1 - yClassification(xMatrix, theta)));
  
endfunction

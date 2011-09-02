function N = matrixnormalize(M)
  % MATRIXNORMALIZE
  % 
  % N = matrixnormalize(M)
  %
  % Normalize matrix values to be between the range 0 and 1. Current just works with
  % matrices of type double.
  %
  % Inputs:
  %   M  original input matrix
  % Output:
  %   N  normalized matrix
  %
  %
  switch class(M)
  case 'double'
    N = (M-min(M(:)))./(max(M(:))-min(M(:)));
  case 'uint8'
    N = (M-min(M(:)))*(255/double((max(M(:))-min(M(:)))));
  otherwise
    error('Class not supported');
  end
end

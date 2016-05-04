function [ normVector ] = normDct( vPatch, doNorm )
%NORMDCT Apply dct + zero mean and variance
%   Reconstruct the patch from a vector and apply normalization to have
%   zero mean and unit variance.
%   Return the patch as a vector
%   VPATCH the patch to be treated
if nargin ~= 2
    error('Not enough argument')
end

X = double(vPatch);
if doNorm
    % Zero mean
    X = X-mean(X(:));
    % Zero variance
    X = X/std(X(:));
end

normVector = dct(double(X));

end

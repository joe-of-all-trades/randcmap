function outmap = randcmap( levels, maptype )
%RANDCMAP generates colormap with random order
%   outmat = randmap(levels, matype) generates colormap with randomized
%   order. For example, rjet = randmap(256, 'jet') generates a randomized
%   jet colormap with 256 levels. 
% Copyright, Chao-Yuan Yeh, 2016

if ~any(strcmpi(maptype, {'parula', 'jet', 'hsv', 'hot', 'cool', 'spring', ...
        'summer', 'autumn', 'winter', 'gray', 'bone', 'copper', 'pink', ...
        'lines', 'colorcube', 'prism', 'flag', 'white'}))
    error('Not a supported colormap type')
end

% Create function handle from a string
fh = str2func(maptype);

idx = randperm(levels);
inmap = fh(levels);
outmap = inmap(idx, :);

% Slow, non-vectorized way
%for ii = 1:length(idx)
%    outmap(ii, :) = inmap(idx, :);
%end

end



% The type of input is an array of floats, every 30th element is a -1
% Splits the array on the -1's, leaving them out
function [ res ] = splitarr(arr)
old = 1;
col = 1;
res = zeros(29, 5);
for idx = 1:numel(arr)
    element = arr(idx);
    if (element < 0)
        part = arr(old:(idx - 1));     
        res(:,col) = part;
        old = idx + 1;
        col = col + 1;
    end
end     
end

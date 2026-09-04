function merge_soundtrack = merge(fs,overlap_time,varargin)
%merge Summary of this function goes here
%   Detailed explanation goes here
overlap_block = round(overlap_time*fs);
merge_soundtrack = varargin{1};
for i=2:nargin-2
    if overlap_block > 0
        mix = merge_soundtrack(end-overlap_block+1:end)+varargin{i}(1:overlap_block);
    else
        mix = [];
    end
    merge_soundtrack = [merge_soundtrack(1:end-overlap_block) mix varargin{i}(overlap_block+1:end)];
end
end
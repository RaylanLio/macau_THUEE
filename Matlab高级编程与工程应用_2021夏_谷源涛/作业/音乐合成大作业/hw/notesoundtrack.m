function soundtrack = notesoundtrack(f_base,pitch,max_amp,holding_time,fs,varargin)
%notesoundtrack Summary of this function goes here
%   Detailed explanation goes here
t = 0:1/fs:holding_time-1/fs;
step = [0 2 4 5 7 9 11];
pitch_r = mod(pitch-1,7) + 1;
pitch_q = floor((pitch-1)/7);
f = f_base*2.^(step(pitch_r)/12+pitch_q);
disp(f+"Hz");
soundtrack = max_amp.*sin(2*pi*f.*t);
if nargin > 5
    for i=1:nargin-5
        soundtrack = soundtrack + varargin{i}.*max_amp.*sin(2*pi*f*(i+1).*t);
    end
end
end

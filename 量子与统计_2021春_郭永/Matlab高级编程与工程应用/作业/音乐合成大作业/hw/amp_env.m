function note_env = amp_env(soundtrack)
%amp_env Summary of this function goes here
%   Detailed explanation goes here
L = length(soundtrack);
impulse_block = round(L*3/16);
decay_block = round(L/16);
stay_block = round(L*8/16);
stop_block = L-impulse_block-decay_block-stay_block;

n = 1:impulse_block;
impulse_env = 2.^((n-1)./impulse_block)-1;
n = 1:decay_block;
decay_env = 0.8.^((n-1)./decay_block);
n = 1:stay_block;
stay_env = 0.8.*ones(1,stay_block);
n = 1:stop_block;
stop_env = 0.2.^((n-1)./stop_block)-0.2;

note_env = [impulse_env decay_env stay_env stop_env].*soundtrack;
end

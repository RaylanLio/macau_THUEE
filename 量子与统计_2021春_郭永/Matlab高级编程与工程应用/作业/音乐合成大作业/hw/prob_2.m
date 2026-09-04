clear all;
clc;
close all;

%parameter
max_amp=1;
fs=8e3;

f_base=349.23;
unit_holding_time=0.5/0.25;
overlap_time = unit_holding_time/128;

%{
doremifasolatido = [];
for i = 1:8
	doremifasolatido = [doremifasolatido notesoundtrack(f_base,i,max_amp,unit_holding_time/2,fs)];
end
%sound(doremifasolatido);
%}

envscore();
sound(soundtrack,fs);

figure
plot((0:length(soundtrack)-1)/fs,soundtrack);
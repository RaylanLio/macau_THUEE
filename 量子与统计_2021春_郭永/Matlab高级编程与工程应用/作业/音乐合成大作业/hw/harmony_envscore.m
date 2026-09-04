%part1
part1_1 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/4*1.5,fs,0.3,0.2));
part1_2 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/16,fs,0.3,0.2));
part1_3 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/16,fs,0.3,0.2));
part1 = merge(fs,overlap_time,part1_1,part1_2,part1_3);

%part2
part2_1 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/8,fs,0.3,0.2));
part2_2 = amp_env(notesoundtrack(f_base,5,max_amp,unit_holding_time/8,fs,0.3,0.2));
part2_3 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/8,fs,0.3,0.2));
part2_4 = amp_env(notesoundtrack(f_base,9,max_amp,unit_holding_time/8,fs,0.3,0.2));
part2 = merge(fs,overlap_time,part2_1,part2_2,part2_3,part2_4);

%part3
part3_1 = amp_env(notesoundtrack(f_base,12,max_amp,unit_holding_time/4,fs,0.3,0.2));
part3_2 = amp_env(notesoundtrack(f_base,9,max_amp,unit_holding_time/4,fs,0.3,0.2));
part3 = merge(fs,overlap_time,part3_1,part3_2);

%part4
part4_1 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/4,fs,0.3,0.2));
part4_2 = amp_env(notesoundtrack(f_base,7,max_amp,unit_holding_time/8,fs,0.3,0.2));
part4_3 = amp_env(notesoundtrack(f_base,6,max_amp,unit_holding_time/8,fs,0.3,0.2));
part4 = merge(fs,overlap_time,part4_1,part4_2,part4_3);

%part5
part5_1 = amp_env(notesoundtrack(f_base,5,max_amp,unit_holding_time/4,fs,0.3,0.2));
part5_2 = amp_env(notesoundtrack(f_base,12,max_amp,unit_holding_time/4,fs,0.3,0.2));
part5 = merge(fs,overlap_time,part5_1,part5_2);

%part6
part6_1 = amp_env(notesoundtrack(f_base,9,max_amp,unit_holding_time/4,fs,0.3,0.2));
part6_2 = amp_env(notesoundtrack(f_base,10,max_amp,unit_holding_time/8,fs,0.3,0.2));
part6_3 = amp_env(notesoundtrack(f_base,9,max_amp,unit_holding_time/8,fs,0.3,0.2));
part6 = merge(fs,overlap_time,part6_1,part6_2,part6_3);

%part7
part7_1 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/4,fs,0.3,0.2));
part7_2 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/8,fs,0.3,0.2));
part7_3 = amp_env(notesoundtrack(f_base,6,max_amp,unit_holding_time/8,fs,0.3,0.2));
part7 = merge(fs,overlap_time,part7_1,part7_2,part7_3);

%part8
part8_1 = amp_env(notesoundtrack(f_base,9,max_amp,unit_holding_time/8,fs,0.3,0.2));
part8_2 = amp_env(notesoundtrack(f_base,10,max_amp,unit_holding_time/8,fs,0.3,0.2));
part8_3 = amp_env(notesoundtrack(f_base,9,max_amp,unit_holding_time/8,fs,0.3,0.2));
part8_4 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/8,fs,0.3,0.2));
part8 = merge(fs,overlap_time,part8_1,part8_2,part8_3,part8_4);

%part9
part9_1 = amp_env(notesoundtrack(f_base,9,max_amp,unit_holding_time/8,fs,0.3,0.2));
part9_2 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/8,fs,0.3,0.2));
part9_3 = amp_env(notesoundtrack(f_base,7,max_amp,unit_holding_time/8,fs,0.3,0.2));
part9_4 = amp_env(notesoundtrack(f_base,6,max_amp,unit_holding_time/8,fs,0.3,0.2));
part9 = merge(fs,overlap_time,part9_1,part9_2,part9_3,part9_4);

%part10-11
part10to11_1 = amp_env(notesoundtrack(f_base,5,max_amp,unit_holding_time*5/8,fs,0.3,0.2));
part10to11_2 = amp_env(notesoundtrack(f_base,5,max_amp,unit_holding_time/8,fs,0.3,0.2));
part10to11_3 = amp_env(notesoundtrack(f_base,8,max_amp,unit_holding_time/8,fs,0.3,0.2));
part10to11_4 = amp_env(notesoundtrack(f_base,9,max_amp,unit_holding_time/8,fs,0.3,0.2));
part10to11 = merge(fs,overlap_time,part10to11_1,part10to11_2,part10to11_3,part10to11_4);

overlap_smooth_time=unit_holding_time/128;
%part12
part12_1 = amp_env(notesoundtrack(f_base,5,max_amp,unit_holding_time/4,fs,0.3,0.2));
part12_2 = amp_env(notesoundtrack(f_base,5,max_amp,unit_holding_time/8,fs,0.3,0.2));
part12_3 = amp_env(notesoundtrack(f_base,6,max_amp,unit_holding_time/8,fs,0.3,0.2));
part12 = merge(fs,overlap_time,part12_1,merge(fs,overlap_smooth_time,part12_2,part12_3));

%part13
part13 = amp_env(notesoundtrack(f_base,2,max_amp,unit_holding_time/2,fs,0.3,0.2));

%part14
part14_1 = amp_env(notesoundtrack(f_base,1,max_amp,unit_holding_time/4,fs,0.3,0.2));
part14_2 = amp_env(notesoundtrack(f_base,1,max_amp,unit_holding_time/8,fs,0.3,0.2));
part14_3 = amp_env(notesoundtrack(f_base,-1,max_amp,unit_holding_time/8,fs,0.3,0.2));
part14 = merge(fs,overlap_time,part14_1,merge(fs,overlap_smooth_time,part14_2,part14_3));

%part15
part15 = amp_env(notesoundtrack(f_base,2,max_amp,unit_holding_time/2,fs,0.3,0.2));

%part16
part16_1 = amp_env(notesoundtrack(f_base,5,max_amp,unit_holding_time/4,fs,0.3,0.2));
part16_2 = amp_env(notesoundtrack(f_base,5,max_amp,unit_holding_time/4,fs,0.3,0.2));
part16 = merge(fs,overlap_time,part16_1,part16_2);

soundtrack = merge(fs,overlap_time,part1,part2,part3,part4,part5,part6,part7,part8,part9,part10to11,part12,part13,part14,part15,part16);

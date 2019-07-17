% Lab 3 Script

freq_9 = get_freq(9);

C_sig = get_wave('C', 'm', 2, 11025);
% soundsc(C_sig);

E_sig = get_wave('E', 'm', 2, 11025);
G_sig = get_wave('G', 'm', 2, 11025);
C_chord = C_sig + G_sig + E_sig;
% soundsc(C_chord);

G_chord = get_chord_wave('G', 2, 11025);
% soundsc(G_chord);
Am_chord = get_chord_wave('Am', 2, 11025);
% soundsc(Am_chord);

clear


Numb_Linkin_Park_Chorus_Chords = {'Em', 4; 'C', 4; 'G', 4; 'D', 4};
Numb_Linkin_Park_beat_length = 60/110;
Numb_Chorus = get_song_wave(Numb_Linkin_Park_Chorus_Chords, Numb_Linkin_Park_beat_length, 11025);
% soundsc(Numb_Chorus);
Numb_Chorus_Strummed = ADSR_env(Numb_Chorus, Numb_Linkin_Park_beat_length, 16, 11025);
 soundsc(Numb_Chorus_Strummed);
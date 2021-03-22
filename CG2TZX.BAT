rem 2cgc2wav -i Demo.cas -o Demo_8820Hz.WAV -f 8820
rem sox Demo_8820Hz.WAV Demo_8820Hz.VOC
rem rem sox -v 3 Demo_44KHz.WAV Demo_44KHz.VOC
rem direct /t 1596 Demo_8820Hz.VOC Demo_2192Hz.tzx

forfiles /s /m *.cas /C "cmd /c 2cgc2wav -i @file -o @fname.wav -f 8820
forfiles /s /m *.wav /C "cmd /c sox @file @fname.voc
del *.wav
forfiles /s /m *.voc /C "cmd /c direct /t 1596 @file @fname_2192Hz.tzx
del *.voc
mkdir GENIETZX
move *.tzx GENIETZX
PAUSE
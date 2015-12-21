function [C]=frek(nota,oktav)                                               %fonksiyon olusturduk argümanlarý nota ile oktav olan
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalarý dizilerde belirtiyoruz
a=strcmp(notalar,nota);                                                     %üstte girilen notayý dizide buluyor
b=find(a,1);                                                                %girilen notanýn hangi indexte oldugunu buluyor
C=round(16.35*(2^oktav)*(2^((b-1)/12)));                                    %sayýyý en yakýn deðere kaydýrma
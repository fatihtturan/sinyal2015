function [C]=frek(nota,oktav)                                               %fonksiyon olusturduk arg�manlar� nota ile oktav olan
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalar� dizilerde belirtiyoruz
a=strcmp(notalar,nota);                                                     %�stte girilen notay� dizide buluyor
b=find(a,1);                                                                %girilen notan�n hangi indexte oldugunu buluyor
C=round(16.35*(2^oktav)*(2^((b-1)/12)));                                    %say�y� en yak�n de�ere kayd�rma
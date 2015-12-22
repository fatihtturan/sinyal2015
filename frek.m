function [C]=frek(nota,oktav)                                               %fonksiyon olusturduk argümanlarý nota ile oktav olan
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalarý dizilerde belirtiyoruz
a=strcmp(notalar,nota);                                                     %üstte girilen notayý dizide buluyor
b=find(a,1);                                                                %girilen notanýn hangi indexte oldugunu buluyor

if(nargin==0)
       
                disp ('veri giriniz:')

else if (nargin==1)
         if (m==13)
             frekans=0;
         elsa 

C=round(16.35*(2^4)*(2^((b-1)/12)));                                    %sayýyý en yakýn deðere kaydýrma

        end
     else
        if (m==13)
             frelans=0;
        else frekans C=round(16.35*(2^4)*(2^((b-1)/12)));
        end
end
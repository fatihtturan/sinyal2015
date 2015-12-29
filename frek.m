function [frekans]=frek(nota,oktav,oktavdegeri)%oluşturulan frek fonksiyonunda frekans değeri döndürülüyor

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %içinde notalar olan dizi oluşturuldu
a=strcmp(notalar,nota); %üstteki diziden girilen notayı arar
b=find(a,1);%üstteki fonksiyondan 1. indisli argümanı alır
    if (nargin==0)
disp ('veri girişi yapınız');
        elseif (nargin==1)
 
            if (b==13)
               frekans=0;
            else
                
              
        frekans=16.35*(2^(4+oktavdegeri))*(2^((b-1)/12));%frekans fonksiyonu oktavdeğeri ile oluşturuldu
       end
    
    elseif (nargin==2)
       
          if (b==13)
               frekans=0;
        else
            frekans=16.35*(2^(oktav))*(2^((b-1)/12)); %frekans fonksiyonu oktav ile oluşturuldu
          end
    else
        if (b==13)
               frekans=0;
        else
            frekans=16.35*(2^(oktav+oktavdegeri))*(2^((b-1)/12)); %frekans fonksiyonu oktav ve oktavdeğeri ile birlikte oluşturuldu
          end
    end
end 
   




function [aa,bb]=note (f,dur)   %fonksiyon oluþturduk 
bb=0:1/1000000:dur;             %frekans aralýgýný belirttik 
aa=sin(2*pi*f*zz);              %sinüsün hesaplanma fonksiyonu  
plot(bb,aa)                     %burdan grafiði yazdýrýyoruz 


function [aa,bb]=note (f,dur)   %fonksiyon olu�turduk 
bb=0:1/1000000:dur;             %frekans aral�g�n� belirttik 
aa=sin(2*pi*f*zz);              %sin�s�n hesaplanma fonksiyonu  
plot(bb,aa)                     %burdan grafi�i yazd�r�yoruz 

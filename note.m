
function[x,t]=note (frekans,vurus) %3 değere göre sinus girafigi cizilir
fs=8192;
t=0:1/fs:(vurus-1/fs); %0dan dura kadar 1/(100*ff) kadar arttırıyor.
x=sin(2*pi*frekans*t); %girilen bilgi cikisinde sinus sinyali dondu.
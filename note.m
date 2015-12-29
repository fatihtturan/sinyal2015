function[x,t]=note(frekans,vurus)%sinüs sinyalini çizdiren fonksiyon oluşturuldu
fs=8192;% frekans basına düsen fsleme sayısı
ds=fs/100;
t=0:1/fs:vurus-(1/fs);
p_uzunluk=length(t);
harmonik_katlari=[1 0.8 0.4 0.1];%verilen harmonik katlar matrisi
h_uzunluk=length(harmonik_katlari);%harmonik katların uzunluğu
x=zeros(1,p_uzunluk);
for i=1:h_uzunluk
x=x+(harmonik_katlari(i)*sin(2*pi*(i*frekans)*t));
            
        end

A=linspace(0,1.5,p_uzunluk/4);
B=linspace(1.5,1,p_uzunluk/8);
C=linspace(1,1,p_uzunluk/2);
D=linspace(1,0,p_uzunluk/8);
 zarf=[A B C D];
 x=x.*zarf;

     end
 
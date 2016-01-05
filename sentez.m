%%
dosya=fopen('notalar.txt');%notalar dosyas�n� a�t�k
Notalar=fscanf(dosya,'%c');%karakterleri okur
[nota,b,c]=textread('notalar.txt','%s %s %s'); %stringler s�ras�yla nota b ve c ye atan�r
fs=8192;%sabit �rrnekleme frekans�
ds=fs/100;%�rnekleme frekans�n�n 100'de biri boyunda bir duraklama s�resi
go=round(fs/10);%gecikme s�resi hesapland�
notalar=zeros(1,fs); %�rnekleme s�resi kadar s�f�rdan olusan bir dizi olu�turuldu
durak=[];%durma s�resi boyutunda s�f�rdan olusan bir dizi olusturuldu
oktav=str2num(cell2mat(b));%dosyadan cell olarak okunan degiskenler double degere d�n��t�r�ld�. 
%%
for i=1:(length(nota)) % Nota dizisi boyu kadar d�ng� olu�turuldu.
vurus((i),1)=str2num(cell2mat(c(i,1)));%dosyadan cell olarak okunan degi�kenler double degere d�n��t�r�ld�
frekans((i),1)=frek(nota((i),1),oktav((i),1));
[x,t]=note(frekans((i),1),vurus((i),1));%olu�turdu�umuz note fonksiyonu �a�r�ld�
notalar=[notalar durak x];
end
plot(notalar)
%%

notalarecho=zeros(1,(length(notalar)));%notalar matrisi boyutlar�nda s�f�rdan olusan bir dizi olu�turuldu
for i=1:(length(notalar))% notalar dizisi boyu kadar d�ng� oluturuldu
f=(go+i);%echo olu�turmak i�in gerekli olan gecikme s�resi d�ng�ye sokuldu
if f<(length(notalar)) %gecikme s�resi notalar matrisinin boyutunu ge�mesin diye �art sa�land�
notalarecho(i)=notalar(i)*0.3+notalar(f);%de�erlerin y�zde 30 u al�narak gecikme s�resi hesapland�
else
notalarecho(i)=notalar(i)*0.3+0; 
end
end 
plot(notalarecho)
%%

normalizenotalarecho=zeros(1,(length(notalar)));%normalizasyon de�i�keni tan�mland�.
normalizenotalarecho=notalarecho/max(abs(notalarecho));%sinyalin tepe de�erleri 1'e normalize edilmi�tir.
plot(normalizenotalarecho)
sound(normalizenotalarecho)%sinyal d�nd�r�ld�

    

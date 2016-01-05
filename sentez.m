%%
dosya=fopen('notalar.txt');%notalar dosyasýný açtýk
Notalar=fscanf(dosya,'%c');%karakterleri okur
[nota,b,c]=textread('notalar.txt','%s %s %s'); %stringler sýrasýyla nota b ve c ye atanýr
fs=8192;%sabit örrnekleme frekansý
ds=fs/100;%Örnekleme frekansýnýn 100'de biri boyunda bir duraklama süresi
go=round(fs/10);%gecikme süresi hesaplandý
notalar=zeros(1,fs); %örnekleme süresi kadar sýfýrdan olusan bir dizi oluþturuldu
durak=[];%durma süresi boyutunda sýfýrdan olusan bir dizi olusturuldu
oktav=str2num(cell2mat(b));%dosyadan cell olarak okunan degiskenler double degere dönüþtürüldü. 
%%
for i=1:(length(nota)) % Nota dizisi boyu kadar döngü oluþturuldu.
vurus((i),1)=str2num(cell2mat(c(i,1)));%dosyadan cell olarak okunan degiþkenler double degere dönüþtürüldü
frekans((i),1)=frek(nota((i),1),oktav((i),1));
[x,t]=note(frekans((i),1),vurus((i),1));%oluþturduðumuz note fonksiyonu çaðrýldý
notalar=[notalar durak x];
end
plot(notalar)
%%

notalarecho=zeros(1,(length(notalar)));%notalar matrisi boyutlarýnda sýfýrdan olusan bir dizi oluþturuldu
for i=1:(length(notalar))% notalar dizisi boyu kadar döngü oluturuldu
f=(go+i);%echo oluþturmak için gerekli olan gecikme süresi döngüye sokuldu
if f<(length(notalar)) %gecikme süresi notalar matrisinin boyutunu geçmesin diye þart saðlandý
notalarecho(i)=notalar(i)*0.3+notalar(f);%deðerlerin yüzde 30 u alýnarak gecikme süresi hesaplandý
else
notalarecho(i)=notalar(i)*0.3+0; 
end
end 
plot(notalarecho)
%%

normalizenotalarecho=zeros(1,(length(notalar)));%normalizasyon deðiþkeni tanýmlandý.
normalizenotalarecho=notalarecho/max(abs(notalarecho));%sinyalin tepe deðerleri 1'e normalize edilmiþtir.
plot(normalizenotalarecho)
sound(normalizenotalarecho)%sinyal döndürüldü

    

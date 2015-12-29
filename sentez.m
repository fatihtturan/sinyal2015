dosya=fopen('notalar.txt');%notalar dosyasını actık
Notalar=fscanf(dosya,'%c');%karakterleri okur
[nota,b,c]=textread('notalar.txt','%s %s %s'); %stringleri sırasıyla nota b ve c ye atanır
fs=8192;%sabit örnekleme frekansı
ds=fs/100;%örnekleme frekansının 100'de biri boyunda bir duraklama süresi
go=round(fs/10);
notalar=zeros(1,fs);
durak=[];
oktav=str2num(cell2mat(b)); 
for i=1:(length(nota))
vurus((i),1)=str2num(cell2mat(c(i,1)));
frekans((i),1)=frek(nota((i),1),oktav((i),1));
[x,t]=note(frekans((i),1),vurus((i),1));
notalar=[notalar durak x];
end
notalarecho=zeros(1,(length(notalar)));
for i=1:(length(notalar)) 
f=(go+i);
if f<(length(notalar)) 
notalarecho(i)=notalar(i)*0.3+notalar(f);
else
notalarecho(i)=notalar(i)*0.3+0; 
end
end 
normalizenotalarecho=zeros(1,(length(notalar)));
normalizenotalarecho=notalarecho/max(abs(notalarecho));
sound(normalizenotalarecho)

    

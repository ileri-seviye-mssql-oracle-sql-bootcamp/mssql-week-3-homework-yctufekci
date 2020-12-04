
SELECT TOP(1) U.URUNAD ,K.isim,K.soyad
FROM tblSiparisDetay SD 
JOIN tblUrun U ON SD.urunKod=U.urunKod
JOIN tblSiparis S ON SD.faturaKod=S.faturaKod
JOIN tblKullanici K ON S.kullaniciKod=K.kullaniciKod
ORDER BY SD.fiyat desc;

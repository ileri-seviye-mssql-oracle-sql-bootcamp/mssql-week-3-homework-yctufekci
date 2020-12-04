SELECT top(1) k.isim,k.soyad, count(s.faturaKod) 
FROM tblSiparis S 
join tblkullanici K on S.kullaniciKod=K.kullaniciKod AND K.isim LIKE 'a%' and k.soyad like '%ak%' 
group by k.isim,k.soyad
order by COUNT(s.faturaKod) desc ;
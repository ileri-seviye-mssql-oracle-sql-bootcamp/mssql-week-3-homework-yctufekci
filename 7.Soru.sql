select tblsehir.Isim 
from tblSehir
,(select top(1) K.sehir SehirKodu, SUM(t1.Toplam) GenelToplam
	from tblKullanici k join 
						(select s.kullanicikod,count(*) Toplam
						from tblsiparis S join tblSiparisDetay SD on s.faturaKod=sd.faturaKod 
						where SD.urunKod='3499'
						group by s.kullaniciKod) T1
			   on k.kullaniciKod=t1.kullaniciKod
	group by k.sehir
	order by 2 desc) as C

where tblsehir.Id=c.SehirKodu



select U.urunAd,count (*)
from tblUrun U
join tblSiparisDetay SD on SD.urunKod=U.urunKod
join tblSiparis S on S.faturaKod=SD.faturaKod
--iptal durumunda olan siparislerin durumkodunu bilmiyorsak bir join daha yaparız. aciklaması üzerinden koşul koyarız.
--join tblSiparisDurum sdurum on s.siparisDurumKod=sdurum.siparisDurumKod where sdurum.aciklama='İptal Edildi'
where s.siparisDurumKod='10'
group by u.urunAd
--and sdurum.siparisDurumKod=10 

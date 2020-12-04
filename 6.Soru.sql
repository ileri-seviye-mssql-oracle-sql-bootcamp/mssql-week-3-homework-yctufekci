SELECT top (1) m.meslek , count(s.faturakod)
from tblSiparis S
join tblKullanici K on k.kullaniciKod=s.kullaniciKod
join tblMeslek M on m.meslekKod=k.meslekKod
group by m.meslek
order by 2 desc;






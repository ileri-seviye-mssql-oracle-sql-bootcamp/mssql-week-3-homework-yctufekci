select u.urunad, SUM(sd.adet) as TOPLAM_SIPARIS_ADEDI from tblsiparisdetay sd
join tblSiparis s on sd.faturakod=s.faturakod 
join tblurun u on sd.urunkod=u.urunkod
where s.siparistarih between '01/01/2007' AND '05/03/2014'
group by u.urunAd;
SELECT m.meslek 
	from tblMeslek M ,
		(
		SELECT K.meslekkod 
			from tblKullanici K 
			where k.kullaniciKod NOT IN (select kullanicikod from tblsiparis)
		) KMK
	where M.meslekkod= KMK.meslekKod;

 
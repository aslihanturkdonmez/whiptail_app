
Kayit () {
	isim=$(whiptail --fb --inputbox "\nİsim Soyisim Giriniz" 11 52 --cancel-button "İPTAL" --title "KAYIT" 3>&1 1>&2 2>&3)
	cancel=$?
	        if [ "$isim" != "" ]; then
	ogrno=$(whiptail --fb --inputbox "\nÖğrenci No Giriniz" 11 52 --title "KAYIT" 3>&1 1>&2 2>&3)
	cancel=$?
		if [ "$ogrno" != "" ]; then
	echo "$ogrno $isim" >> kayıt.txt
	whiptail --fb --title "KAYIT BAŞARILI" --msgbox "        DSC BTÜ ailesine hoşgeldin :)" 10 52
		elif [ "$ogrno" == "" -a $cancel == 0 ]; then
	whiptail --fb --title "KAYIT BAŞARISIZ" --msgbox "         Ögrenci No alanı boş olamaz!" 10 52
		fi
elif [ $cancel == 0 ]; then
	whiptail --fb --title "KAYIT BAŞARISIZ" --msgbox "         İsim - Soyisim alanı boş olamaz!" 10 52
fi
}

Listele () {
	file="kayıt.txt"
#	echo "$file"
	if [ -s $file ]; then
	whiptail --fb --textbox kayıt.txt --scrolltext 18 52
	else
	whiptail --fb --title "SONUÇ" --msgbox "Henüz hiç üye bulunmamaktadır." --scrolltext 10 52
	fi
}

Ara () {
	aranacakisim=$(whiptail --fb --inputbox "\nAramak istediğiniz üyenin adını veya öğrenci numarasını giriniz." 13 58 --title "ARA" --nocancel 3>&1 1>&2 2>&3)
	cancel=$?
	file="kayıt.txt"
	if [ -s $file ]; then
	ara=`cat kayıt.txt | grep "$aranacakisim"`
	whiptail --fb --title "SONUÇ" --msgbox "$ara" --scrolltext 14 52
	else
	whiptail --fb --title "SONUÇ" --msgbox "Henüz hiç üye bulunmamaktadır." --scrolltext 14 52
fi
}

Sil () {
	silinecekNo=$(whiptail --fb --inputbox "\nSilmek istediğiniz üyenin ÖĞRENCİ NUMARASINI giriniz." 11 58 --title "SİL" 3>&1 1>&2 2>&3)
	cancel=$?
	if [ $cancel == 0 ]; then
	sil1="$silinecekNo "
	if [ !$`cat kayıt.txt | grep "$sil1"` 2>/dev/null ]; then
	whiptail --fb --title "UYARI" --msgbox "                Üye bulunamadı!" 10 52
	else
	sed -i "/^$sil1/d" kayıt.txt
	kayitVar=`cat kayıt.txt | grep "$sil1"`
	if [ "$kayitVar" ]; then
	whiptail --fb --title "SİLME BAŞARISIZ" --msgbox  "Kayıt silinemedi. Lütfen tekrar dene!" 10 52
	else
	whiptail --fb --title "SİLME BAŞARILI" --msgbox "Silme işlemi başarıyla gerçekleştirildi." 10 52
	fi
	fi
	fi
}

Cikis () {

if (whiptail --fb --title "ÇIKIŞ" --yesno "Emin misin? Daha Game of Code düzenleyecektik :(" --yes-button "Gitmem gerek. Görüşürüz" --no-button "Biraz daha duracağım" 10 78); then
    exit
fi
}



whiptail --fb --textbox dsc.txt 17 80 --title "Developer Student Clubs BTU" --scrolltext

while true;
do
secim=$(
whiptail --fb --title "İşlemler" --menu "\nYapmak istediğiniz işlemi seçiniz..." 16 52 5 \
	"1)" "DSC BTU Üyesi Ol"   \
	"2)" "Üyeleri Listele"  \
	"3)" "Üye Ara" \
	"4)" "Üye Sil" \
	"5)" "Çıkış Yap"  3>&2 2>&1 1>&3
)
case "$secim" in
	"1)") Kayit
;;
	"2)") Listele
;;
	"3)") Ara
;;
	"4)") Sil
;;
	"5)") Cikis
;;
	*)
	if [ "$?" == "1" ]; then
	Cikis
	fi 
esac
done



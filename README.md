# Linux Shell Script w/Whiptail
Proje bash script dili ile oluşturulmuş olup, aşağıdaki işlemleri gerçekleştirebilmektedir;
<ul>
  <li>Bilgi Girişi</li>
  <li>Kayıt Arama</li>
  <li>Tüm Kayıtları Göster</li>
  <li>Kayıt Sil</li>
  <li>Çıkış</li>
</ul>

## Kurulum
**1.Adım)** Whiptail Uygulamasını kurmak
```
sudo apt-get install whiptail
```
**2.Adım)** Proje dosyasını indirmek ve çalıştırmak için aşağıdaki komutları terminal ekranınıza kopyalayın ve Enter'a basın.
```
wget -P ~/ https://github.com/aslihanturkdonmez/whiptail_app/archive/main.zip
unzip ~/main.zip
mv ~/*-main ~/AslihanTurkdonmez
cd AslihanTurkdonmez
bash whiptail.sh
```
**NOT:** İsterseniz projeyi sağ üstten Download ZIP seçeneğini seçerek indirebilir, klasörü çıkarttığınız konuma terminalden erişip 
```bash whiptail.sh
``` 
yazarak da projeyi çalıştırabilirsiniz.

![1](https://user-images.githubusercontent.com/43846857/104632661-1b2afe00-56af-11eb-8548-c97593c4c1fe.png)

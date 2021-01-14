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
```
bash whiptail.sh
``` 
yazarak da projeyi çalıştırabilirsiniz.

## Proje Tanıtım

### Giriş Ekranı
Proje ilk çalıştırıldığında kullanıcı için bir bilgilendirme ekranı yer alıyor. 

![1](https://user-images.githubusercontent.com/43846857/104632661-1b2afe00-56af-11eb-8548-c97593c4c1fe.png)

### Menü
Bilgilendirme ekranından 'OK' butonuna basıldığında karşımıza işlem seçebileceğimiz bir menü ekranı geliyor.

![2](https://user-images.githubusercontent.com/43846857/104636222-13218d00-56b4-11eb-8d78-44019c63c4d4.png)

#### 1)Kayıt Ekle
Menüden *1)DSC BTU üyesi ol* seçildiğinde iki adet bilgi giriş ekranı gelecektir. Bir tanesinde İsim Soyisim diğerinde ise Öğr. No istenmektedir. Bu bilgiler girildiğinde ve kayıt başarılı olduysa demektir ki girilen bilgiler `kayıt.txt` içine kaydedilmiş. Daha önceden böyle bir dosya yoksa aynı zamanda dosya oluşturulmuştur.

![kayıt1](https://user-images.githubusercontent.com/43846857/104636492-7e6b5f00-56b4-11eb-953a-f438adb941ec.png)

İsim-Soyisim alanı boş bırakıldığında *İsim - Soyisim Alanı boş olamaz!* uyarısı veriyor. Ve kayıt eklemeden Menü ekranına dönüş sağlıyor. Aynı şekilde aşağıda da görüldüğü üzere Öğr No alanı boş bırakıldığında uyarı veriyor ve 'OK' butonuna basıldığında Menü ekranına dönüş yapıyor.

![kbasarısız](https://user-images.githubusercontent.com/43846857/104636954-30a32680-56b5-11eb-813c-54223165446f.png)

Kayıt eklendiğinde ise aşağıdaki uyarı geliyor ve 'OK' butonuna basıldığında Menü'ye dönüş sağlanıyor.

![kayıtbasarı](https://user-images.githubusercontent.com/43846857/104637308-b030f580-56b5-11eb-9629-fadb2f4f7d2b.png)

#### 2)Tüm Kayıtları Göster
Menüden *2)Üyeleri Listele* seçildiğinde `kayıt.txt` içindeki tüm kişiler görüntülenecektir. Eğer kayıt.txt yoksa veya içeriği boş ise aşağıdaki ekran gözükecektir.

![listele](https://user-images.githubusercontent.com/43846857/104638097-c5f2ea80-56b6-11eb-889c-3e59650823ec.png)

#### 3)Kayıt Arama
Menüden *3)Üye Ara* seçildiğinde ekrana aramak istenen kaydın bilgilerini alan ekran gelecek, 'OK' butonuna basıldığında ise `kayıt.txt` içindeki aramayla eşleşen kayıtlar ekrana gelecektir. Eğer hiç üye yok ise *Henüz hiç üye bulunmamaktadır!* mesajı ekrana gelecektir.

#### 4)Üye Sil
Menüden *3)Üye Ara* seçildiğinde ekrana silinmek istenen üyenin öğr no bilgisini alan ekran gelecek, 'OK' butonuna basıldığında ise `kayıt.txt` içinde o numaraya ait kayıt varsa silinecektir. Eğer yok ise *kayıt bulunamadı* uyarısı ekrana gelecektir.

![silmeBasarılı](https://user-images.githubusercontent.com/43846857/104639430-78777d00-56b8-11eb-9a36-0e310214a476.png)

![üyeBulunamadı](https://user-images.githubusercontent.com/43846857/104639515-8fb66a80-56b8-11eb-8281-2e6cca705238.png)

#### 5)Çıkış Yap

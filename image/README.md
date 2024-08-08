# Tutorial Install dengan 1 klik

saya telah membuat file image Windows saya sendiri yang dapat diunduh di [link ini](https://github.com/FighterTunnel/rdp). File-file tersebut merupakan karya saya sendiri dan saya jamin keamanannya.

Kini, saya juga telah menyiapkan skrip installer untuk memudahkan kalian dalam menginstal OS Windows di VPS. Berikut adalah langkah-langkah terbaru untuk menginstal OS Windows di VPS DigitalOcean.

Prosesnya hampir sama, tetapi dengan menggunakan skrip installer ini, kalian tidak perlu lagi melakukan konfigurasi IP setelah proses instalasi. Jadi, setelah instalasi selesai, RDP kalian dapat langsung digunakan!

### 1. Buat Droplet
Kali ini, saya menggunakan OS Ubuntu 20.04 dalam proses pembuatannya. Jangan lupa untuk tidak mencentang pilihan User Data.

### 2. Masuk Mode Recovery
Setelah berhasil membuat VPS (droplet), kita perlu mengubah VPS ke mode recovery. Caranya:
![Screenshot](https://raw.githubusercontent.com/FighterTunnel/rdp/main/image/photo_1.jpg)

- Matikan VPS.
- Ubah pengaturan boot ke Boot from Recovery ISO.
- Hidupkan kembali VPS.
- Masuk ke console.
  
Jika jendela browser tidak muncul seperti gambar di bawah, silakan tekan ENTER.
![Screenshot](https://raw.githubusercontent.com/FighterTunnel/rdp/main/image/photo_2.jpg)
### Install Windows
Setelah berhasil masuk ke mode recovery, jalankan perintah berikut untuk memulai proses instalasi.

Pilih OS yang ingin kalian instal. Kalian juga bisa menggunakan mirror; jika server tempat image yang saya sediakan terasa lambat, kalian dapat me-mirror file image yang saya buat di server kalian sendiri.

Setelah proses instalasi selesai, skrip ini akan otomatis mematikan VPS kalian.

### Matikan Mode Recovery
Setelah proses di atas selesai, kita perlu mematikan mode recovery di VPS. Caranya:

- Ubah pengaturan boot kembali ke Boot from Hard Drive.
- Hidupkan kembali VPS.

RDP kalian siap digunakan! Kalian dapat login menggunakan RDP tanpa harus melakukan konfigurasi IP di Windows.

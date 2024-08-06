# Windows RDP Installer

[![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.png?v=103)](https://github.com/FighterTunnel/tunnel)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-Yes-green)](https://GitHub.com/FighterTunnel/tunnel/graphs/commit-activity)
[![GitHub Forks](https://img.shields.io/github/forks/FighterTunnel/tunnel?&logo=github)](https://github.com/FighterTunnel/tunnel/fork)
[![GitHub Stars](https://img.shields.io/github/stars/FighterTunnel/tunnel?&logo=github)](https://github.com/FighterTunnel/tunnel/stargazers)

## Deskripsi
Repositori ini berisi skrip dan panduan untuk menginstal dan mengonfigurasi Remote Desktop Protocol (RDP) pada sistem operasi Windows. RDP memungkinkan pengguna untuk terhubung ke komputer Windows dari jarak jauh, memberikan akses penuh ke desktop, aplikasi, dan file.

![Screenshot](https://www.bleepstatic.com/content/hl-images/2024/05/14/Windows-Server.jpg)

## Fitur
- Instalasi mudah dan cepat untuk RDP pada Windows.
- Konfigurasi pengaturan RDP sesuai kebutuhan pengguna.
- Dukungan untuk berbagai versi Windows (Windows 10, Windows Server, dll.).

## Prerequisites
- Sistem operasi Windows yang kompatibel.
- Koneksi internet untuk mengunduh pembaruan dan driver yang diperlukan.
- Autosetup Interface IP RDP

## Install Otomatis Dengan 1 Klik
```
wget https://raw.githubusercontent.com/FighterTunnel/rdp/main/image/auto.sh && bash auto.sh
```
## Install Manual
1. **Windows 10**
```
wget -O- --no-check-certificate http://rdp.yha.my.id/windows10.gz | gunzip | dd of=/dev/vda
```
2. **Windows Server 2016**
```
wget -O- --no-check-certificate http://rdp.yha.my.id/windows2016.gz | gunzip | dd of=/dev/vda
```
3. **Windows Server 2019**
```
wget -O- --no-check-certificate http://rdp.yha.my.id/windows2019.gz | gunzip | dd of=/dev/vda
```
4. **Windows Server 2022**
```
wget -O- --no-check-certificate http://rdp.yha.my.id/windows2022.gz | gunzip | dd of=/dev/vda
```

## Ikuti Petunjuk di Layar
<details>
<summary><b>🔗 Remote Desktop Protocol Detail Login</b></summary>

### Remote Desktop Protocol Detail Login

-  RDP HOST/IP PORT `5888`
-  Username `Administrator`
-  Passoword `@Ftvpnstores`
</details>

<details>
<summary><b>🔗 Tutorial install di bawah ini</b></summary>
<br>
    
> Anda memerlukan akun cloud silahkan beli [disini](https://t.me/yha_bot)
<h4> Install Otomatis 1 Klik: </h4>    
<p><a href="https://t.me/carainstallrdp"><img src="https://img.shields.io/badge/Tonton%20DI%20Telegram-blue?style=for-the-badge&logo=telegram" width="200""/></a></p>
<h4> Install Manual: </h4>    
<p><a href="https://t.me/carainstallrdp/4"><img src="https://img.shields.io/badge/Full%20Vidio%20-green?style=for-the-badge&logo=telegram" width="200""/></a></p>
    
</details>

<h3 align="center">Sangat disarankan mengganti password!!!</h3>

## Kontribusi
Kami menyambut baik kontribusi dari komunitas! Silakan buka isu atau kirim pull request jika Anda memiliki saran atau perbaikan.

## Lisensi
Repositori ini dilisensikan di bawah [Raphielscape Public License](https://raw.githubusercontent.com/FighterTunnel/rdp/main/LICENCE) - Version 1.d, Agust 2024

Anda dapat menyesuaikan bagian-bagian tertentu sesuai dengan kebutuhan spesifik proyek Anda

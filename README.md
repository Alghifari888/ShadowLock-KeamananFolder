# 🔒 ShadowLock V1 - Enkripsi Folder Aman

## ✨ Kutipan

> *"Aku tidak berilmu; yang berilmu hanyalah DIA. Jika tampak ilmu dariku, itu hanyalah pantulan dari Cahaya-Nya."*  


## 📜 Deskripsi
**ShadowLock** adalah program enkripsi folder yang dirancang untuk melindungi data Anda dengan aman. Program ini menggunakan teknologi enkripsi dan penyimpanan password hash di Google Drive untuk memastikan keamanan data Anda.

![Demo](videoujicoba.gif)

## 🌟 Fitur Utama
- **🔐 Enkripsi dan Dekripsi Folder**: Kunci dan buka folder dengan mudah menggunakan kata sandi.
- **✅ Verifikasi Kata Sandi**: Hanya pengguna dengan kata sandi yang benar dapat mengakses folder.
- **📁 Pembuatan Folder Aman**: Buat dan hapus folder terenkripsi secara cepat.
- **☁️ Penyimpanan Password Hash di Google Drive**: Memudahkan akses dan pengelolaan password hash.

## 🚀 Kelebihan
- **🔒 Keamanan Tinggi**: Menggunakan enkripsi SHA-256 untuk melindungi password.
- **💻 Portabel**: Dapat dijalankan di berbagai sistem operasi Windows.
- **🛠️ Mudah Digunakan**: Antarmuka pengguna sederhana dan intuitif.
  
## 📥 Cara Instalasi

### Prasyarat
1. **Git:** Pastikan Anda telah menginstal Git. [Unduh Git](https://git-scm.com/).
2. **Visual Studio Code (VS Code):** [Unduh VS Code](https://code.visualstudio.com/).
3. **cURL:** Pastikan cURL terinstal. [Unduh cURL](https://curl.se/download.html).

### Langkah-langkah Instalasi

1.  🛠️ Kloning Repositori:
    ```bash
    git clone https://github.com/Alghifari888/ShadowLock-KeamananFolder.git
    ```
   Ganti `NamaPengguna` dengan nama pengguna GitHub Anda.

2.  💻 Buka Proyek di VS Code:
   - Klik `File` > `Open Folder`, pilih folder `ShadowLock`.

3.  ☁️ Konfigurasi Google Drive:
   - Buat file baru di Google Drive, salin URL-nya.
   - Dapatkan `File ID`. Misalnya, dari URL 
     ```
     https://drive.google.com/file/d/1cpVjmXLhD7nzrIlxqZyEqL3fQbwFFI7b/view,
     ```
     maka `File ID` adalah 
     ```
     1cpVjmXLhD7nzrIlxqZyEqL3fQbwFFI7b`.
     
   - Buka file `ShadowLock.bat`, ganti nilai variabel 
      ```batch 
      set fileid=1cpVjmXLhD7nzrIlxqZyEqL3fQbwFFI7b```

4. 🎉 Simpan Perubahan:
   - Simpan perubahan pada file tersebut.

5. 🚀 Menjalankan Program:
    ```bash
    ShadowLock.bat
    ```

## 🔑 Mengonversi Teks ke Hash SHA-256

Untuk menyimpan kata sandi secara aman, konversikan teks biasa menjadi hash SHA-256:

### Langkah-langkah Menggunakan Situs Web

1. **Buka Browser**
   - Akses browser favorit Anda (Chrome, Firefox, dll.).

2. **Kunjungi Situs Penghitung Hash**
   - Masukkan salah satu situs berikut ke dalam bilah alamat:
     - [OnlineHashCrack](https://www.onlinehashcrack.com/tools/hash-generator.php)
   
3. **Masukkan Teks Kata Sandi**
   - Di kolom input pada situs tersebut, masukkan kata sandi yang ingin Anda ubah menjadi hash.

4. **Pilih Algoritma SHA-256**
   - Pilih algoritma hashing sebagai "SHA-256".

5. **Hasilkan Hash**
   - Klik tombol "Generate" atau "Calculate" untuk menghasilkan hash dari kata sandi.

6. **Salin Hasilnya**
   - Salin hasil output (hash) yang ditampilkan oleh situs web tersebut.

### Menyimpan Hash ke File .txt

1. Buka aplikasi Notepad atau editor teks lainnya.
2. Tempelkan hasil hash yang telah disalin ke dalam dokumen baru.
3.Simpan dokumen sebagai *password.txt* atau nama lain sesuai preferensi anda .

## ☁️ Mengunggah File Password ke Google Drive

Setelah membuat file berisi password hashed:

### Langkah-langkah Unggah File Ke Google Drive:

1.Buka browser anda ,masuklah kedalam akun google drive anda .
  
2.Klik tombol "+ Baru" (New) di sebelah kiri atas layar .

3.Pilih opsi "Upload File" lalu cari *password.txt* yg sudah dibuat sebelumnya .

4.Setelah selesai ,file akan muncul didalam daftar berkas google drive anda .

5.Jika perlu ,klik kanan pada berkas tersebut > pilih “Get link” agar bisa membagikannya kepada orang lain jika diperlukan . 

6.Ubah pengaturan berbagi sesuai kebutuhan agar orang lain dapat mengaksesnya jika diperlukan.


**Selamat belajar dan semoga bermanfaat!**
✨ Kalau project ini membantu, boleh kasih ⭐ di GitHub ya!

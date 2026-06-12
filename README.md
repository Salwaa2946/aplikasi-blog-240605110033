# Aplikasi Blog Laravel

## Identitas Mahasiswa

**Nama:** Kurnia Salwa Zakia
**NIM:** 240605110033

---

## Deskripsi Aplikasi

Aplikasi Blog Laravel merupakan sistem manajemen konten (CMS) yang digunakan untuk mengelola artikel, penulis, dan kategori artikel. Aplikasi ini memiliki dua jenis halaman, yaitu:

### Halaman Administrator (CMS)

* Login dan Logout
* Kelola Penulis (CRUD)
* Kelola Kategori Artikel (CRUD)
* Kelola Artikel (CRUD)

### Halaman Pengunjung

* Menampilkan 5 artikel terbaru
* Menampilkan daftar kategori artikel
* Filter artikel berdasarkan kategori
* Menampilkan detail artikel
* Menampilkan artikel terkait berdasarkan kategori yang sama

Aplikasi dibangun menggunakan Framework Laravel dan database MySQL sesuai ketentuan UAS Pemrograman Web.

---

## Langkah Menjalankan Aplikasi

### Clone Repository


git clone https://github.com/Salwaa2946/aplikasi-blog-240605110033.git


### Masuk ke Folder Project


cd aplikasi-blog-240605110033

### Install Dependency

```bash
composer install
```

### Salin File Konfigurasi

```bash
cp .env.example .env
```

### Generate Application Key

```bash
php artisan key:generate
```

### Atur Konfigurasi Database pada File `.env`

Sesuaikan konfigurasi database MySQL yang digunakan.

### Jalankan Migrasi Database

```bash
php artisan migrate
```

### Jalankan Aplikasi

```bash
php artisan serve
```

### Buka Browser

```text
http://localhost:8000
```

---

## Video Demonstrasi

**Link YouTube:**
https://youtu.be/YP3iaiFmUXk

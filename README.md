# ✈️ Flight Booking System – Java Servlets & JSP (MVC Architecture)

Sebuah aplikasi **Flight Booking System berbasis web** yang **responsif** dan dibangun menggunakan **Java Servlets** dan **Java Server Pages (JSP)** dengan arsitektur **Model-View-Controller (MVC)**.  

---

## 🧰 Teknologi yang Digunakan

### **Frontend**
- HTML  
- CSS  
- JavaScript  
- jQuery  
- Bootstrap  
- JSP (Java Server Pages)  
- AJAX (untuk widget pencarian penerbangan)

### **Backend**
- Java Servlets  
- Java Models  
- Database: Microsoft Access  

### **Web Service**
- SOAP Web Services  
  - Mendapatkan harga dan jumlah kursi yang tersedia

---

## 👥 Role Pengguna

Aplikasi ini memiliki tiga jenis peran:

- **Airline Admin**
- **Airline Manager**
- **Customer**

---

## 🔄 Alur Kerja Aplikasi (Workflow)

Aplikasi ini dirancang untuk digunakan oleh satu maskapai penerbangan yang ingin menjual kursi secara online. Berikut alur kerjanya:

1. **Airline Admin** menetapkan harga untuk tiga jenis kursi:
   - First Class  
   - Business  
   - Economy  
2. Admin dapat membuat dan memperbarui fitur untuk setiap jenis kursi.  
3. Admin menentukan jumlah kursi yang tersedia untuk setiap penerbangan.  
4. **Airline Manager** akan melihat daftar kursi yang baru ditambahkan/diperbarui oleh Admin saat login.  
5. Manager harus menyetujui harga atau perubahan tersebut.  
6. Hanya setelah disetujui Manager, perubahan akan muncul dan dapat dibeli oleh Customer.  
7. **Customer** dapat membeli kursi sesuai ketersediaan.  
8. Sistem otomatis menghitung kursi tersisa — jika kursi habis, Customer tidak dapat membeli lagi.  
9. Customer dapat memilih kursi berdasarkan:
   - Kota asal & tujuan  
   - Tanggal perjalanan  
   - Jumlah penumpang  
10. Setelah memilih kursi, Customer melihat **itinerary** pemesanan.  
11. Setelah disetujui, Customer diarahkan ke halaman pembayaran dengan total harga.  
12. Setelah pembayaran dianggap sukses, kursi ditandai sebagai terjual.  
13. Sistem mengirimkan **email itinerary** kepada Customer.

---

## 📸 Tampilan Antarmuka (Screenshots)

> (Tambahkan gambar jika diperlukan, seperti halaman Home, Login, Itinerary, dll.)

---


# Tugas Pertemuan 2

Fork dan clone repository ini, lalu jalankan perintah 
```
flutter pub get
```
Buatlah tampilan form yang berisi nama, nim, dan tahun lahir pada file `ui/form_data.dart`, lalu buatlah tampilan hasil dari input data tersebut pada file `ui/tampil_data.dart`

JELASKAN PROSES PASSING DATA DARI FORM MENUJU TAMPILAN DENGAN FILE `README.md`

a. /lib ├── ui │ └── tampil_data.dart # Halaman untuk menampilkan data ├── form_data.dart # Halaman form input data └── main.dart # Entry point aplikasi

b. Pada halaman TampilData, data yang dikirim dari halaman form diterima melalui parameter. Halaman ini akan menampilkan nama, NIM, dan umur yang dihitung berdasarkan tahun lahir yang diterima dari halaman form.

c. Proses Passing Data
- Form Input: Pada halaman FormData, pengguna mengisi data melalui beberapa TextField. Data yang diisi berupa nama, NIM, dan tahun lahir.
- Mengambil Data dari Form: Setelah pengguna mengisi form dan menekan tombol Simpan, data diambil dari TextField dengan menggunakan properti .text. Data dari tahun lahir diubah menjadi integer menggunakan int.parse().
- Navigasi ke Halaman Lain: Menggunakan Navigator.push(), aplikasi akan berpindah ke halaman TampilData. Data yang diambil dari form dikirim ke halaman ini sebagai parameter melalui constructor TampilData.
- Menampilkan Data: Pada halaman TampilData, data yang diterima ditampilkan menggunakan widget Text. Umur dihitung berdasarkan tahun lahir yang dikirimkan dari halaman form.
- Buat tampilan semenarik mungkin untuk dilihat.
  
d. Cara Kerja
- Pengguna memasukkan data ke dalam form pada halaman FormData.
- Setelah tombol "Simpan" ditekan, data dikirim ke halaman TampilData.
- Pada halaman TampilData, data ditampilkan sesuai dengan input yang diberikan.
- Proses passing data dalam Flutter dapat dilakukan dengan mudah menggunakan Navigator dan parameter constructor. Dengan cara ini, data yang dimasukkan pada satu halaman dapat dikirim ke halaman lain dan ditampilkan sesuai kebutuhan.

Nama : Sufyan Abdur Rofiq

NIM : H1D022004

Shift Baru: C

## Screenshot
![Screenshot 2024-09-17 204859](https://github.com/user-attachments/assets/3332b5a2-2291-4d5c-8acb-8dfe81c8e9ff)
![Screenshot 2024-09-17 204633](https://github.com/user-attachments/assets/a2acf4fd-c19d-4658-be7f-1870b651c183)

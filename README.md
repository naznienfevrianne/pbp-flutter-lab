# Tugas 8: Flutter Form
Nama: Naznien Fevrianne Malano
<br>
NPM: 2106751404
<br>
Kelas: B / NIP
<br>

## Jelaskan perbedaan `Navigator.push`dan `Navigator.pushReplacement`
- `Navigator.push` akan menambahkan page baru di atas page sebelumnya
- `Navigator.pushReplacement` akan mengganti halaman lama dnegan halaman baru

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- `Drawer` <br>
Drawer berfungsi sebagai navigasi, berupa panel yang dapat dimunculkan dan disembunyikan. Biasanya berada di samping layar
- `Form`
Menampilkan formulir untuk menerima input data dari user
- `DropDownButton`
DropDownButton adalah button yang dapat memberikan pilihan ketika diklik.
- `TextButton`
Button yang dapat diklik.
- `Expanded` 
Size child dari Expanded akan mengisi tempat yang tersedia
- `SingleChildScrollView`
Size child dari SingleChildScrollView akan memiliki fungsionalitas scrollable.


## Sebutkan jenis-jenis event yang ada pada Flutter
1. onClick
2. onHover
3. onPressed
4. onTap
5. onSaved <br>
dsb

## Jelaskan bagaimana cara kerja `Navigator` dalam mengganti halaman dari aplikasi Flutter
Navigator pada Flutter bekerja seperti struktur data stack. Halaman yang ingin dimuat akan dipush, dan berada di top of stack. Jika ingin kembali ke halaman sebelumnya, maka Navigator akan melakukan pop, sehingga page akan kembali ke halaman sebelumnya.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Menambahkan drawer/hamburger menu pada app yang telah dibuat sebelumnya dan enambahkan tiga tombol navigasi pada drawer/hamburger <br>
Membuat widget `Drawer` dan menambahkan button-button yang mengarahkan user ke page counter, form dan data budget
- Menambahkan halaman form <br>
Membuat file `add_budget.dart`. Membuat widget form di dalamnya yang berisi input judul, nominal, jenis dan button submit. Input judul dan nominal memanfaatkan TextFormField, sementara jenis menggunakan Dropdown.
- Menambahkan halaman data budget <br>
Membuat file `data_budget.dart`. Menampilkan data budget secara vertikal yang telah disimpan di sebuah list (bersifat static di class Budget). Sebelumnya dibuat juga class Budget dengan attribute yang diminta dan mempunyai static attribute berupa list untuk menyimpan data.
- Melakukan `add` - `commit` - `push` ke GitHub. <br>
Add comit dan push ke github lewat cmd

# Tugas 9: Integrasi Web Service pada Flutter
Nama: Naznien Fevrianne Malano
<br>
NPM: 2106751404
<br>
Kelas: B / NIP
<br>

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripda membuat model sebelum melakukan pengambilan data JSON?
Ya. Kita dapat melakukan pengambilan data JSON tanpa perlu membuat model terlebih dahulu. Namun, jika kita mengambil data JSOn tanpa membaut model terlebih dahulu, data yang diambil akan sulit disimpan secara terstruktur. Sehingga, membuat model terlebih dahulu sebelum mengambil data JSON lebih dianjurkan.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- `FutureBuilder()` = widget yang dapat build dirinya sendiri, mengacu pada interaksi snapshot terakhir dengan `Future`
- `InkWell()` = widget yang dapat memberikan behaviour klik pada child widgetnya. Dengan `InkWell()` user dapat mengklik tiap judul watchlist dan diarahkan ke halaman detail watchlist
- `ListTile` = widget yang dapat menampilkan satu baris dengan tinggi konstan.
- `Row` dan `Column` = Widget yang dapat memposisikan child widgetnya dalam sebuah baris vertikal maupun horizontal.

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter
1. Membuat model sesuai dengan model data JSON yang akan di-fetch.
2. Data di-fetch terlebih dahulu dari sebuah API endpoint.
3. Data yang di-fetch kemudian di-decode menjadi bentuk JSON.
4. Data yang sudah di-decode ke dalam bentuk JSON dikonversi menjadi model yang sudah dibuat sebelumnya
5. Data dalam format model dapat ditampilkan di page Flutter.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
1. Menambahkan baris navigasi baru di `drawer.dart` yang mengarah ke halaman mywatchlist.
2. Membuat model watchlist sesuai dengan fields objek watchlist yang sudah dibaut di Tugas 3.
3. Melakukan fetch data dari halaman Tugas 3, decode ke-JSON, diubah ke dalam model dan menampilkan tiap judul di halaman mywatchlist.
4. Memanfaatkan InkWell agar user dapat mengklik judul untuk melihat detail dari film.
5. Membuat halaman detail untuk setiap mywatchlist, dengan memanfaatkan argumen dari navigasi.
6. Membuat tombol back di bagian bawah halaman yang redirect ke halaman utama mywatchlist.
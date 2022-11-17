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


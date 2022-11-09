# Tugas 7: Elemen Dasar Flutter
Nama: Naznien Fevrianne Malano
NPM: 2106751404
Kelas: B / NIP

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya
Stateless adalah widget yang tidak dapat dirubah atau tidak akan pernah berubah. Stateless widget tidak bergantung pada sebuah state. 
Sementara itu, stateful widget adalah widget yang dinamis atau dapat berubah. Tidak seperti stateless, stateful widget dapat merubah tampilan, mengganti warna, dsb.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- `Floating Action Button` -> Ada dua floating button pada tugas ini, yaitu button decrement dan increment yang digunakan untuk menambah dan mengurangi counter
- `Text` -> Ada dua jenis text pada tugas ini, yang pertama untuk menampilkan counter dan yang kedua untuk menampilkan keterangan ganjil dan genap
- `Padding` -> Padding pada tugas ini menjadi parentWidget dari kedua floating buttons, yang berguna untuk memberikan jarak pada floating button
- `Row` -> Row menjadi container untuk kedua floating button agar dapat diletakkan sejajar
- `Container` -> Container pada tugas ini digunakan untuk meletakkan button decrement di ujung kiri dan button increment di ujung kanan

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
`setState()` berguna untuk rebuild page ketika ada sesuatu yang didefinisikan di dalam `setState()` berubah. Pada tugas ini variabel yang berubah di dalam `setState()` adalah variabel `_counter`.

## Jelaskan perbedaan antar `const` dengan `final`
`const` -> Variabel dengan modifier const diinisialisasi pada compile-time dan sudah di-assign ketika runtime. Sehingga, ketika ada state yang diupdate, semua yang ada di build method akan diinisialisasi ulang, termasuk variabel final.
`final` -> Variabel dengan modifier final akan diinisialisasi saat runtime dan hanya dapat di-assign sekali. Sehingga, variabel const tidak akan bisa dirubah sama sekali saat runtime.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat sebuah program flutter baru bernama `counter_7`
Menjalankan `flutter create counter_7` pada cmd sebuah direktori
- Mengubah tampilan program sesuai yang diminta
Menambahkan button decrement di bagian kiri page, dengan membuat padding sebagai parent widget button decrement dan increment, serta menambah Expanded container di antara keduanya agar kedua button berada di bawah. Selain itu, saya juga menambahkan crossAxisAlignment sebagai properti Row yang merupakan container dari kedua button agar kedua button terus berada di bagian bawah page. Kemudian, untuk implementasi bonus, saya menambahkan `if (_counter >0)` sebelum code button decremetn agar button decrement ditampilkan ketika counter lebih besar dari 0 saja.
- Mengimplementasikan logika yang diminta
Membuat blok if dan else untuk menampilkan text. Jika `counter %2 == 0`, maka akan menampilkan text GENAP berwarna merah dan jika `counter %2 == 1`, akan menampilkan text GANJIL berwarna biru.
Membuat function untuk decrement bernama `decrementCounter` yang mengurangi counter di dalam `setState()`, dan menambahkan function tersebut pada variabel onPressed di button decrement. 
Membuat function untuk decrement bernama `incrementCounter` yang menambah counter di dalam `setState()`, dan menambahkan function tersebut pada variabel onPressed di button increment. 
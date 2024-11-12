## Tugas 7
# Nama Repository : bram-music-mobile

**Abraham Jordy Ollen**
**NPM : 2306275102**
**----------------------------------------------------------------------------------------------------------------------------------------**
### 1)  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Widget adalah komponen dasar yang digunakan untuk membuat antarmuka pengguna (UI) Flutter. Widget dapat berupa elemen UI seperti tombol, teks, gambar, atau struktur seperti kolom atau baris. Widget Stateless dan Stateful adalah dua jenis utama widget dalam Flutter, dan masing-masing memiliki peran dan fitur yang berbeda dalam pembaruan antarmuka pengguna.

**1. Stateless Widget**
Stateless Widget adalah widget statis atau tidak berubah yang dibuat sekali dan tidak dapat diubah oleh interaksi pengguna atau perubahan data. Jika data atau tampilan perlu diperbarui, widget ini harus digantikan dengan widget baru.

Salah satu contoh StatelessWidget adalah:
- Teks Statis
- Ikon
- Gambar

**2. Stateful Widget**
Stateful Widget adalah widget yang dinamis atau berubah, yang berarti bahwa widget ini memiliki state (keadaan) internal yang dapat berubah selama aplikasi berjalan. Ketika state berubah, Flutter secara otomatis me-refresh tampilan widget sesuai dengan perubahan state tersebut.

Widget tetap sesuai untuk elemen UI yang:
- Bisa berubah saat pengguna berinteraksi dengannya
- Bergantung pada data yang dapat diperbarui
- Membutuhkan animasi atau pemrosesan data

**Kesimpulan**
`StatelessWidget` digunakan untuk tampilan yang tidak membutuhkan perubahan, sedangkan `StatefulWidget` cocok untuk tampilan yang interaktif atau yang bergantung pada data dinamis.
Dengan memahami keduanya, kita bisa memilih tipe widget yang tepat sesuai kebutuhan aplikasi, sehingga aplikasi lebih efisien dan mudah dikelola.

### 2)  Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Pada proyek ini, berikut adalah daftar widget yang saya gunakan beserta penjelasan fungsinya:

1. MaterialApp
- Widget utama untuk aplikasi Flutter berbasis Material Design.
- Mengatur tema, title, dan layar utama (home) aplikasi.

2. Scaffold
- Menyediakan struktur dasar layar aplikasi, dengan AppBar di bagian atas dan `body` di tengahnya.
Digunakan di `MyHomePage` sebagai kerangka dasar UI aplikasi.

3. AppBar
- Widget untuk membuat bar judul di bagian atas aplikasi.
- Dalam proyek ini, `AppBar` menampilkan teks "Bram Music Shop" dengan gaya yang sudah ditentukan dan warna dari tema aplikasi.

4. Padding
- Menambahkan ruang di sekeliling widget yang ada di dalamnya.
- Digunakan untuk memberikan jarak di sekitar Column di dalam Scaffold dan GridView di dalam MyHomePage.

5. Column
- Widget tata letak vertikal yang menampilkan widget anaknya dalam susunan vertikal (ke bawah).
- Di dalam `MyHomePage`, `Column` digunakan untuk menyusun informasi `InfoCard`, teks sambutan, dan `GridView` secara vertikal.

6. Row
- Widget tata letak horizontal yang menampilkan widget anaknya dalam susunan horizontal.
- Digunakan untuk menampilkan beberapa `InfoCard` secara bersebelahan dalam satu baris.

7. InfoCard (Custom Widget)
- Kelas widget khusus yang memperlihatkan informasi yang terdiri dari `title` dan `content`.
- Digunakan untuk menampilkan informasi NPM, Nama, dan Kelas di dalam `Row` di layar utama (`MyHomePage`).

8. Card
- Widget dengan gaya Material Design yang menyediakan efek elevasi dan bayangan.
- `Card` digunakan dalam `InfoCard` untuk membuat kartu berisi informasi yang memiliki bayangan di bawahnya, menjadikannya lebih menarik.

9. Container
- Widget kotak serbaguna untuk mengatur tata letak, padding, dan ukuran widget anak di dalamnya.
- Digunakan di `InfoCard` untuk mengatur ukuran dan padding kartu, dan di `ItemCard` untuk mengatur tata letak ikon dan teks di dalam kartu item.

10. Text
- Widget untuk menampilkan teks.
- Digunakan untuk menampilkan berbagai teks, seperti nama aplikasi di `AppBar`, informasi di `InfoCard`, teks sambutan di layar utama, dan nama item di `ItemCard`.

11. GridView.count
- Widget tata letak grid yang menampilkan widget anak dalam kolom dan baris dengan jumlah kolom tetap.
- Digunakan untuk menampilkan `ItemCard` dalam grid dengan 3 kolom dalam `MyHomePage`.

12. ItemHomepage (Custom Class)
- Kelas khusus untuk menyimpan data setiap item, seperti `name`, `icon`, dan `color`.
Bukan widget, tapi digunakan untuk menyimpan informasi yang digunakan oleh `ItemCard`.

13. ItemCard (Custom Widget)
- Kelas widget khusus untuk menampilkan setiap item pada grid dengan ikon dan teks.
- Dibuat menggunakan `Material` dan `InkWell` untuk efek sentuh dan tampilan interaktif.

14. Material
- Menyediakan tampilan Material Design untuk `ItemCard`, seperti efek sentuh dan sudut melengkung.
- `Material` juga digunakan untuk memberi warna latar belakang yang berbeda sesuai dengan warna item yang didefinisikan di `ItemHomepage`.

15. InkWell
- Widget interaktif yang merespon sentuhan dengan animasi ripple.
- Digunakan di `ItemCard` untuk memberikan efek ripple ketika pengguna menekan kartu, dan juga memunculkan `SnackBar` dengan pesan khusus.

16. Icon
- Widget untuk menampilkan ikon.
- Digunakan di `ItemCard` untuk menampilkan ikon sesuai dengan jenis item, seperti `shopping_cart` untuk “Lihat Daftar Produk”.

17. SnackBar
- Widget pop-up kecil yang muncul di bagian bawah layar untuk menampilkan pesan singkat.
- Ditampilkan melalui `ScaffoldMessenger` di dalam `InkWell` di `ItemCard` saat pengguna menekan tombol.

18. ScaffoldMessenger
- Mengelola dan menampilkan `SnackBar` di dalam `Scaffold`.
- Menggunakan `hideCurrentSnackBar()` untuk menutup `SnackBar` yang mungkin sedang terbuka sebelum menampilkan yang baru saat `ItemCard` ditekan.

**Ringkasan Fungsi**
Proyek ini menggunakan kombinasi widget tata letak (seperti `Column`, `Row`, `GridView`) untuk menyusun elemen UI, widget interaktif (seperti `InkWell` dan `SnackBar`) untuk pengalaman pengguna yang dinamis, dan widget tampilan (seperti `Text` dan `Icon`) untuk menyajikan informasi visual.

### 3)  Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` digunakan dalam StatefulWidget untuk memberi tahu Flutter bahwa state widget telah berubah. Saat `setState()` dipanggil, Flutter akan memanggil ulang (rebuild) metode `build()` dari widget tersebut, memperbarui UI dengan nilai state terbaru.

Adapun skenario-skenario penggunaan `setState()` sebagai berikut:
- **Mengubah Data yang Ditampilkan**: Gunakan `setState()` saat kita mengubah data yang perlu diperlihatkan di UI.
- **Respon terhadap Interaksi Pengguna**: Misalnya, saat tombol ditekan atau elemen UI lainnya diubah oleh pengguna.
- **Memodifikasi Koleksi Data**: Misalnya, menambah atau menghapus item dalam List yang ditampilkan di UI.

Dengan `setState()`, aplikasi kita bisa merespons perubahan data secara dinamis, menjaga UI tetap sinkron dengan state terbaru.

### 4)  Jelaskan perbedaan antara `const` dengan `final`.
Ada 3 kategori perbedaan, diantaranya :
1. Waktu Penentuan Nilai (Compile-time vs. Run-time):
- `const`: Digunakan untuk nilai yang ditentukan pada waktu kompilasi. Artinya, nilai harus diketahui dan tetap saat kode dikompilasi. Misalnya, `const` digunakan untuk nilai-nilai seperti `const pi = 3.14;`.

- `final:` Digunakan untuk nilai yang ditentukan saat runtime (saat aplikasi berjalan). Kita bisa memberikan nilai ke `final` saat aplikasi berjalan, tetapi setelah nilai diberikan, nilainya tidak bisa diubah. Contoh, `final DateTime now = DateTime.now();`.

2. Penggunaan pada Objek dan Koleksi:
- `const`: Membuat objek atau koleksi yang benar-benar **immutable** (tidak bisa diubah sama sekali). Semua elemen dan atribut di dalam objek atau koleksi `const` juga bersifat tetap.

- `final`: Objek atau koleksi `final` tidak bisa diubah referensinya, tetapi isinya masih bisa diubah jika objek tersebut adalah objek yang dapat diubah (mutable). Misalnya, `final List myList = [1, 2, 3];` memungkinkan `myList` untuk menambahkan atau menghapus item, namun referensi `myList` tidak dapat diubah ke objek lain.

3. Penggunaan dengan Konstruktor:
- `const`: Bisa digunakan pada **konstruktor const** untuk membuat instance objek yang tetap, misalnya, `const myWidget = MyWidget();`.
- `final`: Tidak bisa digunakan untuk konstruktor `const`, tetapi bisa digunakan untuk deklarasi variabel dalam kelas atau fungsi.

**Kesimpulan**
- Gunakan `const` untuk nilai konstan yang diketahui saat kompilasi dan benar-benar tidak berubah.
- Gunakan `final` untuk variabel yang nilainya diberikan satu kali saja, tetapi mungkin ditentukan saat runtime.

### 5)  Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. Membuat Program Flutter Baru dengan Tema E-Commerce
Program ini adalah aplikasi Flutter dengan tema e-commerce bernama **Bram Music Shop**. Implementasi dilakukan di dalam dua file utama:
- `main.dart` : Mengatur tema aplikasi dan layar utama (`MyHomePage`).
- `menu.dart` : Berisi kelas `MyHomePage` yang menampilkan tampilan utama aplikasi, termasuk informasi pengguna, dan tiga tombol utama.

Di file `main.dart`, saya menginisialisasi aplikasi dengan `runApp(MyApp())` yang menjalankan `MyApp` sebagai widget root. Saya juga mengatur `primary` dan `secondary` color di tema aplikasi menjadi hitam.

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bram Music Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          secondary: Colors.black,
        ),
      ),
      home: MyHomePage(),
    );
  }
}
```
2. Membuat Tiga Tombol dengan Ikon dan Teks
Tiga tombol dengan ikon dan teks dibuat menggunakan widget khusus `ItemCard`. Masing-masing tombol memiliki fungsi yang berbeda:
- **Lihat Daftar Produk**: Tombol ini berfungsi untuk menampilkan daftar produk.
- **Tambah Produk**: Tombol ini memungkinkan pengguna untuk menambah produk baru.
- **Logout**: Tombol ini digunakan untuk keluar dari aplikasi.

Tiga tombol ini didefinisikan sebagai objek `ItemHomepage` dalam daftar `items` di `menu.dart`. Setiap `ItemHomepage` memiliki nama (teks), ikon, dan warna yang berbeda

```dart
final List<ItemHomepage> items = [
  ItemHomepage("Lihat Daftar Produk", Icons.shopping_cart, Colors.blue),
  ItemHomepage("Tambah Produk", Icons.add, Colors.green),
  ItemHomepage("Logout", Icons.logout, Colors.red),
];
```

3. Mengimplementasikan Warna yang Berbeda untuk Setiap Tombol
Setiap tombol diberi warna yang berbeda untuk memberikan identitas visual yang lebih baik:

- **Lihat Daftar Produk:** Warna biru.
- **Tambah Produk:** Warna hijau.
- **Logout:** Warna merah.

Warna ini diimplementasikan dengan menambahkan atribut `color` pada kelas `ItemHomepage`. Warna yang telah ditentukan untuk setiap item akan diambil oleh `ItemCard` dan diterapkan pada properti `color` dari widget `Material`.

```dart
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Warna tombol diambil dari item.color
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item.icon, color: Colors.white, size: 30.0),
              Text(item.name, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

```

4. Memunculkan Snackbar dengan Pesan Khusus untuk Setiap Tombol
Snackbar ditampilkan ketika pengguna menekan salah satu tombol. Pesan yang ditampilkan pada `Snackbar` sesuai dengan tombol yang ditekan.

Hal ini diimplementasikan dalam `ItemCard` dengan menambahkan widget `InkWell` pada setiap kartu item. Fungsi `onTap` dari `InkWell` memanggil `ScaffoldMessenger` untuk menampilkan `Snackbar` dengan pesan yang relevan.

```dart
InkWell(
  onTap: () {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
    );
  },
  child: Container(
    padding: const EdgeInsets.all(8),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, color: Colors.white, size: 30.0),
          Text(item.name, style: const TextStyle(color: Colors.white)),
        ],
      ),
    ),
  ),
);

```

## Tugas 8

### 1) Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Dalam Flutter, `const` adalah kata kunci yang menandakan bahwa sebuah objek atau widget adalah immutable (tidak dapat diubah) dan compile-time constant. Penggunaan `const` pada widget Flutter memiliki beberapa kegunaan dan keuntungan yang dapat meningkatkan efisiensi aplikasi.

**Keuntungan Menggunakan `const` di Flutter**

- **Efisiensi Memori**: Karena objek `const` hanya disimpan satu kali, memori aplikasi lebih efisien. Misalnya, jika kita memiliki beberapa Text("Hello") yang diberi const, Flutter hanya membuat satu instance dari objek Text tersebut, meskipun digunakan di beberapa tempat.

- **Performa yang Lebih Baik**: Dengan menggunakan `const`, Flutter dapat melakukan optimasi saat menggambar ulang tampilan. Widget const tidak perlu dibuat ulang saat build dipanggil, yang membantu mengurangi operasi berlebihan pada aplikasi.

- **Mengurangi Rekonstruksi Widget**: Saat widget bersifat `const`, Flutter tahu bahwa widget tersebut tidak perlu di-render ulang ketika build dipanggil. Ini membantu mengurangi beban rendering saat ada perubahan pada UI, terutama di widget yang sering dibangun ulang.

**Kapan Sebaiknya Menggunakan const**
- *Static Content*: Gunakan const untuk widget yang tidak akan berubah sepanjang waktu, seperti teks statis, ikon, atau padding. Contohnya:

```dart
const Text("Hello, world!");
```
- *Widget Hierarchy yang Tetap*: Jika kita tahu bahwa struktur widget tertentu tidak akan berubah, maka kita bisa menggunakan const di awal hierarki tersebut untuk mengurangi rekonstruksi.

```dart
return const Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("This is static text"),
);
```
- *Dalam Struktur Stateless Widget*: Jika widget kita bersifat `StatelessWidget` dan tidak mengandalkan data dinamis, maka gunakan `const` untuk setiap widget yang mungkin.

- *Penggunaan Berulang dari Nilai Tetap*: Jika kita menggunakan warna atau ukuran tetap yang sama di beberapa tempat, gunakan `const` agar Flutter mengoptimalkan penggunaan objek tersebut di memori.

**Kapan Tidak Menggunakan const**
- *Data yang Dinamis*: Jika widget atau nilai berubah berdasarkan kondisi atau input pengguna

- *Stateful Widget dengan Keadaan yang Berubah*: Jika widget memerlukan status atau properti yang dapat berubah, seperti dalam `StatefulWidget`, maka `const` mungkin tidak cocok.

- *Variabel atau Properti yang Bergantung pada Waktu Runtime*: Jika nilai hanya diketahui saat aplikasi berjalan dan tidak bisa ditentukan saat kompilasi, `const` tidak bisa digunakan.

### 2) Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

`Column` dan `Row` adalah widget tata letak dasar di Flutter yang digunakan untuk menyusun widget secara **vertikal** dan **horizontal**.

Perbedaan Utama antara `Column` dan `Row`
- **Column**: Menyusun widget secara **vertikal** (dari atas ke bawah).
- **Row**: Menyusun widget secara **horizontal** (dari kiri ke kanan).

**Contoh Implementasi `Column`**
Column berguna ketika ingin menyusun widget secara vertikal, misalnya untuk membuat daftar informasi yang tersusun dari atas ke bawah.

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("Nama: John Doe"),
    Text("Pekerjaan: Flutter Developer"),
    Text("Lokasi: Jakarta"),
  ],
)
```

Penjelasan:
- **mainAxisAlignment**: Menempatkan widget di tengah sumbu utama (vertikal).
- **crossAxisAlignment**: Menempatkan widget di awal sumbu silang (kiri).

**Contoh Implementasi `Row`**
`Row` digunakan untuk menyusun widget secara horizontal, misalnya untuk membuat baris ikon dengan teks di sampingnya.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.phone, color: Colors.blue),
    Text("Telepon"),
    Icon(Icons.email, color: Colors.red),
    Text("Email"),
  ],
)
```

Penjelasan:
- **mainAxisAlignment**: Menyebar widget secara merata di sepanjang sumbu utama (horizontal).
- **crossAxisAlignment**: Menempatkan widget di tengah sumbu silang (vertikal).

### 3) Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input yang saya gunakan adalah **TextFormField**, elemen ini digunakan untuk memasukkan teks pada form seperti :
- **name** : nama produk
- **amount** : jumlah produk (dikonversi dari teks ke angka)
- **description** : Deskripsi produk.

**TextFormField** juga memiliki validasi untuk memastikan input tidak kosong dan sesuai dengan tipe data yang diinginkan.

Ada beberapa elemen input flutter yang tidak saya gunakan, seperti :

- Checkbox: Digunakan untuk pilihan boolean (ya/tidak). Misalnya, untuk menandai apakah produk tersedia atau tidak.

- Radio: Digunakan untuk pilihan tunggal dari beberapa opsi. Cocok untuk kasus di mana pengguna hanya boleh memilih satu opsi, misalnya memilih kategori alat musik (gitar, piano, drum).

- Switch: Digunakan sebagai saklar on/off. Misalnya, untuk menentukan apakah produk baru atau bekas.

- Slider: Digunakan untuk memilih nilai dalam rentang tertentu, seperti harga atau kualitas produk (1 hingga 100).

- DropdownButton: Cocok untuk pilihan dengan daftar opsi lebih panjang, misalnya memilih kategori atau merek produk.

### 4) Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema dalam aplikasi Flutter agar konsisten, digunakan properti `theme` di dalam `MaterialApp`. Dengan mengatur tema di satu tempat, yaitu di root aplikasi (`MaterialApp`), seluruh widget dalam aplikasi akan menggunakan gaya yang sama untuk elemen seperti warna utama, warna teks, font, ikon, dan elemen UI lainnya.

**Mengatur Tema pada Aplikasi Flutter**
Pengaturan tema dapat dilakukan dengan mendefinisikan `ThemeData`, yang mencakup pengaturan berbagai aspek tampilan seperti:
- colorScheme: Menentukan skema warna, termasuk warna utama (primary) dan warna sekunder (secondary).
- textTheme: Mengatur gaya teks default untuk judul, subjudul, teks biasa, dll.
- appBarTheme: Mengatur tampilan AppBar, seperti warna latar belakang dan warna ikon.
- iconTheme: Mengatur warna dan ukuran ikon default di seluruh aplikasi.

**Implementasi Tema di Aplikasi `bram-music-shop`**
Pada aplikasi Bram Music Shop, tema telah diimplementasikan di dalam main.dart seperti berikut:

```dart
import 'package:flutter/material.dart';
import 'package:bram_music_shop/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bram Music Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,  // Warna utama menjadi hitam
          secondary: Colors.black, // Warna sekunder juga hitam
        ),
      ),
      home: MyHomePage(),
    );
  }
}
```
**Penjelasan Implementasi Tema**
- *colorScheme*: Pada aplikasi Bram Music Shop, colorScheme diatur dengan primary dan secondary berwarna hitam. Ini memastikan warna hitam digunakan secara konsisten di seluruh aplikasi, termasuk pada AppBar dan elemen UI lainnya yang mengikuti skema warna utama.
- *AppBar*: Diatur menggunakan AppBar dalam MyHomePage untuk mengambil warna utama dari colorScheme. Ini menjaga AppBar memiliki warna latar belakang dan ikon yang konsisten dengan tema.
- *iconTheme*: Warna ikon diatur dalam AppBar menggunakan iconTheme, sehingga ikon pada AppBar akan tampil dengan warna putih secara konsisten.
- *Teks dan Widget Tambahan*: Semua elemen yang mengikuti skema warna akan menggunakan warna yang ditetapkan di colorScheme.

### 5)  Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Dalam Flutter, navigasi antar halaman dengan banyak halaman dapat dikelola dengan beberapa cara utama:

**1. `Navigator` dan `MaterialPageRoute`**
Navigator digunakan untuk mendorong (push) dan menghapus (pop) halaman dari stack, sehingga memungkinkan navigasi bolak-balik antar halaman.

- Navigator.push: Untuk berpindah ke halaman baru.

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => DetailPage()),
);
```
- Navigator.pop: Untuk kembali ke halaman sebelumnya.

```dart
Navigator.pop(context);
```

**2. Named Routes**
Dengan named routes, setiap halaman diberi nama unik yang didefinisikan dalam `MaterialApp`, sehingga navigasi menjadi lebih terstruktur.

Konfigurasi Named Routes:
```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomePage(),
    '/details': (context) => DetailPage(),
  },
);
```
**3. Navigasi dengan `Drawer` atau `BottomNavigationBar`**
- **Drawer**: Memungkinkan akses cepat ke halaman-halaman utama aplikasi, biasanya ditempatkan di Scaffold.
- **BottomNavigationBar**: Ideal untuk navigasi tab di bagian bawah, berguna untuk aplikasi yang memerlukan akses cepat antara beberapa halaman utama.

**4. Navigator 2.0 (Untuk Aplikasi Kompleks)**
`Navigator 2.0` menawarkan kontrol navigasi yang lebih dalam, termasuk dukungan untuk URL routing dan deep linking. Ini cocok untuk aplikasi kompleks dengan kebutuhan routing yang lebih lanjut.

**Contoh di `bram-music-shop`**
Pada aplikasi Bram Music Shop, navigasi dilakukan menggunakan:
- *Navigator.push* untuk berpindah ke halaman form tambah produk.
- *Drawer* untuk menyediakan akses cepat ke halaman utama dan halaman tambah produk.

Pendekatan ini menciptakan pengalaman navigasi yang efisien dan mudah digunakan dalam aplikasi berstruktur banyak halaman.


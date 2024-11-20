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

## Tugas 9

### 1) Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Ada beberapa poin yang bisa saya ringkas mengapa kita perlu membuat model untuk pengambilan JSON:
**Struktur Data yang Jelas**
Model memastikan data yang diterima atau dikirim memiliki struktur yang konsisten, sehingga lebih mudah dipahami dan digunakan.

**Validasi dan Manipulasi**
Dengan model, validasi dan manipulasi data menjadi lebih terstruktur, seperti memeriksa tipe data atau memformat nilai.

**Readability dan Maintainability**
Kode menjadi lebih mudah dibaca dan dikelola, terutama dalam aplikasi berskala besar.

**Deteksi Kesalahan Dini**
Model membantu mendeteksi ketidaksesuaian data lebih awal, seperti atribut yang hilang atau tipe yang salah.

**Reusability**
Model dapat digunakan kembali di berbagai bagian aplikasi, meningkatkan efisiensi pengembangan.

Adapun juga risiko tanpa model sebaai berikut :
**Tidak Tervalidasi**
Data JSON tanpa model rentan terhadap kesalahan seperti tipe yang salah atau atribut yang hilang.

**Kesalahan Pengetikan**
Menggunakan key-value langsung meningkatkan risiko typo yang sulit dilacak.

**Kesulitan dengan Data Kompleks**
Data JSON bersarang atau hierarkis sulit dikelola tanpa struktur yang jelas.

**Kode Tidak Efisien**
Penanganan JSON tanpa model sering menghasilkan kode yang berulang dan sulit dipelihara.

**Kesimpulan**
Model tidak wajib, tetapi sangat direkomendasikan untuk aplikasi dengan data kompleks. Penggunaan model meningkatkan efisiensi, keandalan, dan keterbacaan kode. Packages seperti `json_serializable` atau freezed di Dart dapat mempermudah pembuatan model secara otomatis.

### 2) Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini!
Library `http` yang digunakan dalam tugas ini memiliki fungsi utama untuk mengelola komunikasi antara aplikasi Flutter dan server backend (Django). Adapun penggunaannya pada tugas saya antara lain :
**1. Mengambil Data Produk dari Server (GET Request)**
Fungsi ini menggunakan metode GET untuk mengambil data produk dari server Django melalui endpoint `/json/`.
Contoh :
```dart
final response = await request.get('http://127.0.0.1:8000/json/');
```
Data yang diterima direspons dalam format JSON, kemudian dikonversi menjadi model `ProductEntry`.

**2. Mengirim Data Produk ke Server (POST Request)**
Pada file `product_form.dart`:
Fungsi ini menggunakan metode `POST` untuk mengirim data produk baru yang diinput pengguna ke server melalui endpoint `/create-flutter/`.
Contoh :
```dart
final response = await request.postJson(
  "http://127.0.0.1:8000/create-flutter/",
  jsonEncode(<String, String>{
    'name': _name,
    'price': _price.toString(),
    'description': _description,
    'quantity': _quantity.toString(),
  }),
);
```

**3. Autentikasi Pengguna (POST untuk Login dan Logout)**
Pada file `login.dart` dan `item_card.dart`:
- Library ini digunakan untuk mengirim kredensial login pengguna melalui metode `POST` ke endpoint `/auth/login/`.
- Setelah pengguna berhasil login, library ini membantu mengelola cookie untuk autentikasi sesi.

**4. Handling Respons Server**
- Library ini menangkap respons server (kode status, pesan, atau data) dan digunakan untuk menentukan tindakan selanjutnya di aplikasi. Misalnya, menampilkan pesan berhasil atau gagal.

### 3) Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
**Fungsi CookieRequest**
1. Mengelola Sesi Autentikasi
Menyimpan cookie sesi pengguna setelah login dan menyertakannya otomatis dalam setiap permintaan HTTP ke server.

2. Mempermudah Login dan Logout
Menyediakan metode seperti login() dan logout() untuk mengelola autentikasi pengguna tanpa perlu mengelola cookie secara manual.

3. Mendukung Permintaan HTTP dengan Cookie
Menyederhanakan pengiriman data (POST) dan pengambilan data (GET) sambil tetap mempertahankan sesi autentikasi.

4. Handling Respons Server
Menangani respons server dan memeriksa status autentikasi dengan cara yang konsisten.

**Mengapa Perlu Dibagikan ke Semua Komponen?**
- Konsistensi Sesi
Instance tunggal CookieRequest memastikan semua komponen aplikasi menggunakan status autentikasi yang sama.

- Efisiensi Navigasi
Memastikan cookie sesi tetap digunakan meskipun pengguna berpindah halaman.

- Kesederhanaan
Menghindari pembuatan instance baru di setiap komponen, sehingga komunikasi dengan backend menjadi lebih sederhana.

- Kemudahan Manajemen Status
Dengan Provider, semua komponen dapat mengakses fungsi autentikasi dan komunikasi HTTP tanpa mendefinisikannya ulang.

### 4)  Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
**Mekanisme Pengiriman Data dari Input hingga Ditampilkan di Flutter**

**1. Input Data pada Form (Frontend Flutter)**
- Pengguna mengisi form di Flutter, misalnya nama produk, harga, deskripsi, dan jumlah.

- Validator pada setiap field memastikan data valid sebelum dikirim.
- Contoh:
```dart
if (_formKey.currentState!.validate()) {
  // Data valid, lanjutkan pengiriman
}
```
- Setelah data valid, data tersebut dikirim dalam format JSON melalui metode HTTP POST menggunakan library seperti `http` atau `CookieRequest.`

**2. Pengiriman Data ke Server (POST Request)**
- Data dari Flutter dikonversi menjadi format JSON menggunakan `jsonEncode` dan dikirim ke endpoint server yang sesuai.
- Contoh di Flutter:
```dart
final response = await request.postJson(
  "http://127.0.0.1:8000/create-flutter/",
  jsonEncode({
    'name': _name,
    'price': _price.toString(),
    'description': _description,
    'quantity': _quantity.toString(),
  }),
);
```

**3. Penerimaan Data di Server Django**
- Server Django menerima permintaan POST di endpoint yang didefinisikan di `urls.py` dan diproses di `views.py`.
- Contoh kode di django:
```python
@csrf_exempt
def create_product_flutter(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        new_product = Product.objects.create(
            user=request.user,
            name=data["name"],
            price=int(data["price"]),
            description=data["description"],
            quantity=int(data["quantity"])
        )
        new_product.save()
        return JsonResponse({"status": "success"}, status=200)
```
- Data JSON dari Flutter dibaca menggunakan `json.loads(request.body)` dan disimpan dalam database menggunakan model Django.

**4. Menyimpan Data di database**
- Django membuat entri baru di database berdasarkan data yang diterima.
- Contoh model produk di Django:
```python
class Product(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    price = models.PositiveIntegerField()
    description = models.TextField()
    quantity = models.PositiveIntegerField()
```

**5. Mengambil Data untuk Ditampilkan (GET Request)**
- Flutter melakukan permintaan HTTP GET untuk mengambil data dari server.
- Contoh di flutter :
```dart
final response = await request.get("http://127.0.0.1:8000/json/");
List<ProductEntry> products = ProductEntryFromJson(response.body);
```
- Server Django menyediakan data dalam format JSON melalui endpoint GET.

- Contoh di Django:
```python
def get_products(request):
    products = Product.objects.all()
    products_json = serializers.serialize('json', products)
    return HttpResponse(products_json, content_type='application/json')
```

**6. Menampilkan Data di Flutter**
- Data JSON yang diterima dari server diubah menjadi model Dart menggunakan fungsi seperti `ProductEntry.fromJson`.
Data kemudian ditampilkan di widget Flutter menggunakan `ListView.builder`.
- Flutter :
```dart
return ListView.builder(
  itemCount: products.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(products[index].fields.name),
      subtitle: Text("Price: ${products[index].fields.price}"),
    );
  },
);
```

### 5) Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter
**1. Register**
a. Input Data di Flutter
- Pengguna mengisi data seperti username, password, dan konfirmasi password.
- Flutter mengirim data ke server melalui HTTP POST.
- Contoh kode Fluter:
```dart
final response = await request.postJson(
  "http://127.0.0.1:8000/auth/register/",
  jsonEncode({
    "username": _usernameController.text,
    "password1": _passwordController.text,
    "password2": _confirmPasswordController.text,
  }),
);
```
b. Proses di Django
- Django memproses data di view register dengan memvalidasi data yang diterima.
- Jika valid, akun pengguna dibuat dan disimpan di database.
from django.contrib.auth.models import User
```python
def register(request):
    data = json.loads(request.body)
    if data["password1"] == data["password2"]:
        user = User.objects.create_user(
            username=data["username"],
            password=data["password1"]
        )
        return JsonResponse({"status": "success"}, status=201)
    return JsonResponse({"status": "error", "message": "Passwords do not match"}, status=400)
```
c. Respons ke Flutter
- Django mengembalikan respons JSON (`status: success` atau `status: error`).
- Flutter menangani respons dan menampilkan notifikasi kepada pengguna

**2. Login**
a. Input Data di Flutter
- Pengguna memasukkan username dan password di Flutter.
- Data dikirim ke server melalui HTTP POST untuk autentikasi.
- Contoh kode Flutter:
```dart
final response = await request.login(
  "http://127.0.0.1:8000/auth/login/",
  {
    "username": _usernameController.text,
    "password": _passwordController.text,
  },
);
```
b. Proses di Django
- Django memverifikasi username dan password menggunakan mekanisme autentikasi bawaan (authenticate dan login).
- Jika valid, cookie sesi dikirim ke Flutter.
```python
from django.contrib.auth import authenticate, login
@csrf_exempt
def login_view(request):
    data = json.loads(request.body)
    user = authenticate(username=data["username"], password=data["password"])
    if user is not None:
        login(request, user)
        return JsonResponse({"status": "success", "message": "Logged in successfully"}, status=200)
    return JsonResponse({"status": "error", "message": "Invalid credentials"}, status=401)
```
c. Respons ke Flutter
- Cookie sesi disimpan secara otomatis oleh `CookieRequest` untuk digunakan pada permintaan berikutnya.
- Jika login berhasil, Flutter menavigasi pengguna ke halaman menu utama.

**3. Logout**
a. Aksi Logout di Flutter
Pengguna menekan tombol logout, dan Flutter mengirim permintaan HTTP POST ke endpoint logout Django.
```dart
final response = await request.logout("http://127.0.0.1:8000/auth/logout/");
```
b. Proses di Django:
Django menghapus cookie sesi pengguna untuk mengakhiri sesi.

```python
from django.contrib.auth import logout
@csrf_exempt
def logout_view(request):
    logout(request)
    return JsonResponse({"status": "success", "message": "Logged out successfully"}, status=200)
```
**c. Respons ke Flutter**
Setelah logout, Flutter menghapus data sesi lokal dan menavigasi pengguna kembali ke halaman login.

**4. Tampilnya Menu di Flutter**
- Setelah login berhasil, Flutter menavigasi ke halaman menu utama (MyHomePage).
- Flutter menggunakan CookieRequest untuk melakukan permintaan data (GET) dari server, seperti daftar produk atau informasi pengguna.
```
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => MyHomePage()),
);
```

### 6)Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
**1. Setup Autentikasi Django**
1. Buat APP Django baru
Buat app bernama authentication di Django:
```bash
python manage.py startapp authentication
```
2. Instal dan Konfigurasi CORS
- Instal library `django-cors-headers`
```bash
pip install django-cors-headers
```
- Tambahkan ke INSTALLED_APPS dan MIDDLEWARE di settings.py:
```python
INSTALLED_APPS += ['corsheaders']
MIDDLEWARE.insert(0, 'corsheaders.middleware.CorsMiddleware')
```
- Tambahkan pengaturan berikut di settings.py:
```python
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```
3. Buat views untuk Login dan Register
-Tambahkan view login di authentication/views.py:
```python
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        auth_login(request, user)
        return JsonResponse({"status": True, "message": "Login sukses!"}, status=200)
    return JsonResponse({"status": False, "message": "Login gagal."}, status=401)
```
- Tambahkan views register:
```python
from django.contrib.auth.models import User
import json

@csrf_exempt
def register(request):
    data = json.loads(request.body)
    if data["password1"] == data["password2"]:
        if not User.objects.filter(username=data["username"]).exists():
            User.objects.create_user(username=data["username"], password=data["password1"])
            return JsonResponse({"status": 'success', "message": "User created!"}, status=200)
    return JsonResponse({"status": False, "message": "Error in registration."}, status=400)
```

4. Buat URL Routing
-Tambahkan urls.py di folder authentication:
```python
from django.urls import path
from .views import login, register

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
    path('register/', register, name='register'),
]
```
- Tambahkan routing ke urls.py utama:
```python
path('auth/', include('authentication.urls')),
```

5. Buat View Logout
-Tambahkan di authentication/views.py:
```python
from django.contrib.auth import logout as auth_logout

@csrf_exempt
def logout(request):
    auth_logout(request)
    return JsonResponse({"status": True, "message": "Logout berhasil!"}, status=200)
```
**2. Integrasi Autentikasi di Flutter**
1. Instal Dependency
```bash
flutter pub add provider
flutter pub add pbp_django_auth
```
2. Setup provider
-Modifikasi `main.dart` untuk menyediakan `CookieRequest` ke seluruh aplikasi:
```dart
void main() {
  runApp(
    Provider(
      create: (_) => CookieRequest(),
      child: const MyApp(),
    ),
  );
}
```
3. Buat Halaman Login
-Buat file login.dart di folder screens:
```dart
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      body: ElevatedButton(
        onPressed: () async {
          final response = await request.login(
            "http://127.0.0.1:8000/auth/login/",
            {
              'username': _usernameController.text,
              'password': _passwordController.text,
            },
          );

          if (request.loggedIn) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          }
        },
        child: const Text('Login'),
      ),
    );
  }
}
```
4. Buat Halaman Register
- Tambahkan file register.dart:
```dart
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      body: ElevatedButton(
        onPressed: () async {
          final response = await request.postJson(
            "http://127.0.0.1:8000/auth/register/",
            jsonEncode({
              "username": _usernameController.text,
              "password1": _passwordController.text,
              "password2": _confirmPasswordController.text,
            }),
          );
          if (response['status'] == 'success') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }
        },
        child: const Text('Register'),
      ),
    );
  }
}
```
5. Tambahkan Logout
Tambahkan di item_card.dart untuk tombol Logout:
```dart
else if (item.name == "Logout") {
  final response = await request.logout("http://127.0.0.1:8000/auth/logout/");
  if (response['status']) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }
}
```
**3. Fetch Data**
- Buat list_productentry.dart untuk mengambil data dari endpoint /json/ menggunakan CookieRequest.
- Tampilkan data dengan ListView.builder pada Flutter.













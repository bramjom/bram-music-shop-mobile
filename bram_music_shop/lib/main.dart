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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,  // Mengganti warna utama menjadi hitam
          secondary: Colors.black, // Warna sekunder juga diganti menjadi hitam jika diperlukan
        ),
      ),
      home: MyHomePage(),
    );
  }
}

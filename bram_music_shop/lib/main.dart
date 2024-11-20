import 'package:flutter/material.dart';
import 'package:bram_music_shop/screens/menu.dart';
import 'package:bram_music_shop/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Bram Music Shop',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.black, // Mengganti warna utama menjadi hitam
            secondary: Colors.black, // Warna sekunder juga diganti menjadi hitam jika diperlukan
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}

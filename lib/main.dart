import 'package:flutter/material.dart';
import 'package:kuis1_124220048/pages/home_page.dart';
import 'package:kuis1_124220048/pages/log_page.dart';
import 'package:kuis1_124220048/pages/order_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter',
      initialRoute: '/login',
      routes: {
        '/log': (context) => HomePage(
              username: 'username',
            ),
        '/reg': (context) => LoginPage(),
        '/home': (context) => OrderPage(
              jumlah: 'jumlah',
            )
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

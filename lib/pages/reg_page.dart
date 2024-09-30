import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController validasiController = TextEditingController();

  void saveUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', usernameController.text);
    await prefs.setString('password', passwordController.text);
    await prefs.setString('validasi', validasiController.text);

    // Mengarahkan kembali ke halaman login setelah registrasi berhasil
    Navigator.pushReplacementNamed(context, '/log');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrasi Akun')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            TextField(
              controller: validasiController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Konfirmasi Password'),
            ),
            ElevatedButton(
              onPressed: saveUser,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

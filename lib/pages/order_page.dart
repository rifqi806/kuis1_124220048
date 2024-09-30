import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderPage extends StatefulWidget {
  final String jumlah;

  OrderPage({Key? key, required this.jumlah}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  TextEditingController jumlahController = TextEditingController();

  void saveJumlah() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('jumlah', jumlahController.text);

    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Order')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: jumlahController,
              decoration: InputDecoration(labelText: 'Masukkan Jumlah'),
            ),
            ElevatedButton(
              onPressed: saveJumlah,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

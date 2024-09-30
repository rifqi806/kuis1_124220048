import 'package:flutter/material.dart';
import 'package:kuis1_124220048/pages/order_page.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome ${widget.username}"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Main Menu', style: TextStyle(fontSize: 24)),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildMenuItem('Mie Kuah', context),
                _buildMenuItem('Mie Kuah', context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildMenuItem(String title, BuildContext context, [String? jumlah]) {
  return GestureDetector(
    onTap: () {
      if (title == 'Mi kuah') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderPage(jumlah: jumlah!),
          ),
        );
      }
    },
    child: Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontSize: 18)),
        ],
      ),
    ),
  );
}

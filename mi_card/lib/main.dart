import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('Danh thiếp kỹ thuật số'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/avt.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Huỳnh Kim Nam',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Sinh viên VKU',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(CupertinoIcons.phone_fill,
                        color: Colors.deepPurple),
                    title: const Text('0397 675 725'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(CupertinoIcons.mail_solid,
                        color: Colors.deepPurple),
                    title: const Text('rinnam0901@gmail.com'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(CupertinoIcons.location_solid,
                        color: Colors.deepPurple),
                    title: const Text('Đà Nẵng, Việt Nam'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

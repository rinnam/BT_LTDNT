import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Magic8BallApp());
}

class Magic8BallApp extends StatelessWidget {
  const Magic8BallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Magic8BallPage(),
    );
  }
}

class Magic8BallPage extends StatefulWidget {
  const Magic8BallPage({super.key});

  @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  final List<String> _ballImages = [
    'assets/ask_again_later.jpg',
    'assets/i_have_no_idea.jpg',
    'assets/no.jpg',
    'assets/the_answer_is_yes.jpg',
    'assets/yes.jpg',
  ];

  final Random _random = Random();
  int _imageIndex = -1;

  void _shakeBall() {
    setState(() {
      _imageIndex = _random.nextInt(_ballImages.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magic 8 Ball'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _imageIndex == -1 ? 'assets/8.jpg' : _ballImages[_imageIndex],
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _shakeBall,
              child: const Text('Ask the Magic 8 Ball'),
            ),
          ],
        ),
      ),
    );
  }
}

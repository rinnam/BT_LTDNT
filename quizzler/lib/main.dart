import 'package:flutter/material.dart';

void main() {
  runApp(const QuizzlerApp());
}

class Question {
  final String text;
  final bool answer;

  Question(this.text, this.answer);
}

class QuizzlerApp extends StatelessWidget {
  const QuizzlerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzler',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  List<Icon> _scoreKeeper = [];

  final List<Question> _questions = [
    Question('Trái Đất là hành tinh thứ ba trong hệ Mặt Trời.', true),
    Question('Nước sôi ở 90°C ở điều kiện bình thường.', false),
    Question('Con người có 206 xương trong cơ thể người trưởng thành.', true),
    Question('Mặt Trời quay quanh Trái Đất.', false),
    Question('Việt Nam có đường bờ biểi dài hơn 3000 km.', true),
    Question('Kim tự tháp Giza nằm ở Mexico.', false),
    Question('Oxy là nguyên tố hóa học phổ biến nhất trong vỏ Trái Đất.', true),
    Question('Cầu Long Biên bắc qua sông Hồng.', true),
    Question('Động vật có vú lớn nhất thế giới là cá voi xanh.', true),
    Question('Thành phố Hồ Chí Minh là thủ đô của Việt Nam.', false),
  ];

  void _answerQuestion(bool userAnswer) {
    bool correctAnswer = _questions[_questionIndex].answer;

    setState(() {
      if (_questionIndex < _questions.length - 1) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
        _scoreKeeper = [];
      }

      if (userAnswer == correctAnswer) {
        _scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
      } else {
        _scoreKeeper.add(const Icon(Icons.close, color: Colors.red));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    _questions[_questionIndex].text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => _answerQuestion(true),
                  child: const Text(
                    'Đúng',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => _answerQuestion(false),
                  child: const Text(
                    'Sai',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _scoreKeeper,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

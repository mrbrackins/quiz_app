import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(158, 255, 255, 255)
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            label: const Text('Start Quiz')
          )
        ],
      ),
    );
  }
}

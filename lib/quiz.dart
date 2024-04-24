import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({ super.key });

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
Widget? activeScreen;
@override
  void initState() {
    // TODO: implement initState
    activeScreen =   StartScreen(switchScreen);
    super.initState();
  }

void switchScreen(){
  setState(() {
    activeScreen = const QuestionsScreen();
  });
}



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 108, 45, 218),
                Color.fromARGB(255, 164, 117, 245),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child:  activeScreen),
      ),
    );
  }
}



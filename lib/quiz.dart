import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({ super.key });

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers = [];
  var  activeScreen = 'start-screen';


void switchScreen(){
  setState(() {
    activeScreen = 'questions-screen';
  });
}

void chooseAnswer(String answer){
  selectedAnswers.add(answer);

  if(selectedAnswers.length == questions.length){
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }
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
            child:  activeScreen == 'start-screen' ?  StartScreen(switchScreen) :   QuestionsScreen(onSelectAnswer: chooseAnswer,)
            ),
      ),
    );
  }
}



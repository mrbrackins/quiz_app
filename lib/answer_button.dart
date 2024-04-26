

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
   AnswerButton(this.answerText, this.onTap, { super.key });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 64, 6, 75),
        foregroundColor: Color.fromARGB(255, 255, 251, 251),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child:  Text(answerText),
      );
  }
}
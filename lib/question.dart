import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  // ignore: use_key_in_widget_constructors
  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: Text(
        question,
        style: const TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}

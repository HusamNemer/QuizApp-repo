import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // ignore: prefer_final_fields
  var questions = {
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  };

  var questionsMap = [
    {
      'questionText': 'What\'s your favorite color?',
      'AnswerText': ['red', 'blue', 'green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'AnswerText': ['cat', 'dog', 'elephaent']
    }
  ];
  void answer() {
    setState(() {
      _indexQuestion = (_indexQuestion + 1) % 2;
    });
  }

  int _indexQuestion = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 191, 252, 255),
        body: Column(
          children: [
            Question(questionsMap[_indexQuestion]['questionText'] as String),
            ...(questionsMap[_indexQuestion]['AnswerText'] as List<String>)
                .map((e) {
              return Answer(answer, e);
            }).toList()
          ],
        ), 
      ),
    );
  }
}

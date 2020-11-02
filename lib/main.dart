import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(FirstApp());
// }

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Green', 'Yellow', 'Purple'],
    },
    {
      'questionText': 'What\'s your favorite pet?',
      'answers': ['Dog', 'Cat', 'Cow', 'Rabbit'],
    },
    {
      'questionText': 'What\'s your favorite car?',
      'answers': ['Mercedes', 'Range Rover', 'Maybach', 'Volks Wagen'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length) {

    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}

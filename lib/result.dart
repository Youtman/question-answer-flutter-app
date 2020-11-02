import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 3) {
      resultText = 'You are Awesome!';
    } else if (resultScore <= 6) {
      resultText = 'You\'re likable!';
    } else if (resultScore <= 9) {
      resultText = 'You are ... Strange!';
    } else {
      resultText = 'You\'re one greedy person';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz!'), onPressed: resetHandler)
        ],
      ),
    );
  }
}

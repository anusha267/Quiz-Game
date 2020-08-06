import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Function reset;
  final score;
  String resultText = 'You did it';
  Result(this.score, this.reset);
  String resultDisplay() {
    if (score <= 12) {
      resultText = 'You are awesome and innocent';
    } else if (score <= 18) {
      resultText = 'You are pretty likable';
    } else if (score <= 22) {
      resultText = 'You are unique!';
    } else {
      resultText = 'You are... strange?!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultDisplay(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(child: Text('Restart Quiz'), onPressed: reset),
        ],
      ),
    );
  }
}

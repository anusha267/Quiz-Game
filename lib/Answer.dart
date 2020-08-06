import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  final Function selectHandler;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answerText),
        color: Colors.blue,
        onPressed: selectHandler,
      ),
    );
  }
}

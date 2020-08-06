import 'package:flutter/material.dart';
import './Questions.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final Function ans;
  final questions;
  final quesIndex;
  Quiz(this.ans, this.quesIndex, this.questions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[quesIndex]['questionText'],
        ),
        ...(questions[quesIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => ans(answer['score']), answer['answer']);
        }).toList()
      ],
    );
  }
}

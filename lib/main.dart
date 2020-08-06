import 'package:flutter/material.dart';
import 'Quiz.dart';
import 'Result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _totalScore = 0;
  final _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'answer': 'Red', 'score': 9},
        {'answer': 'Blue', 'score': 7},
        {'answer': 'Green', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'answer': 'Burger', 'score': 3},
        {'answer': 'Pizza', 'score': 6},
        {'answer': 'Lasagna', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'answer': 'Panda', 'score': 9},
        {'answer': 'Dog', 'score': 3},
        {'answer': 'Rabbit', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'answer': 'Red', 'score': 9},
        {'answer': 'Blue', 'score': 7},
        {'answer': 'Green', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'answer': 'Burger', 'score': 3},
        {'answer': 'Pizza', 'score': 6},
        {'answer': 'Lasagna', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'answer': 'Panda', 'score': 9},
        {'answer': 'Dog', 'score': 3},
        {'answer': 'Rabbit', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'answer': 'Red', 'score': 9},
        {'answer': 'Blue', 'score': 7},
        {'answer': 'Green', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'answer': 'Burger', 'score': 3},
        {'answer': 'Pizza', 'score': 6},
        {'answer': 'Lasagna', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'answer': 'Panda', 'score': 9},
        {'answer': 'Dog', 'score': 3},
        {'answer': 'Rabbit', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'answer': 'Panda', 'score': 9},
        {'answer': 'Dog', 'score': 3},
        {'answer': 'Rabbit', 'score': 6},
      ],
    },
  ];

  var _quesIndex = 0;
  void _resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _quesIndex += 1;
    });
    print(_totalScore);
    print('Answer Chosen');
    print(_quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _quesIndex < _questions.length
            ? Quiz(_answerQuestion, _quesIndex, _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

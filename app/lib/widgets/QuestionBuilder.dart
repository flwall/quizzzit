import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizzzit/models/question.dart';

class QuestionBuilder extends StatelessWidget {
  final Question question;
  const QuestionBuilder({Key key, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(child: Text(question.question),);
  }
}

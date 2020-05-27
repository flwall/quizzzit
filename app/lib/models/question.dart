import 'package:quizzzit/models/answer.dart';

class Question {
  String question;

  List<Answer> answers = new List(4);

  Question({this.question, this.answers});

// named constructor
  Question.fromJson(Map<String, dynamic> json) {
    question = json['question'];

    List i = json["answers"];

    this.answers = i.map((model) => Answer.fromJson(model)).toList();
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> answerjson;
    for (Answer a in answers) {
      answerjson.add(a.toJson());
    }

    return {
      'question': question,
      'answers': answerjson,
    };
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizzzit/models/question.dart';
import 'package:quizzzit/services/data_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Question>> data;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: data,
      builder: (BuildContext context, AsyncSnapshot snap) {
        if (snap.hasData)
          return Text("Show Data");
        else if (snap.hasError)
          return SnackBar(
            content: Text("An error has occurred when trying to load data"),
          );

        return CircularProgressIndicator(backgroundColor: Colors.blue);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    this.data=getQuestions();
  }

  Future<List<Question>> getQuestions() async {
    return jsonQuestions();
  }

  Future<List<Question>> jsonQuestions() async {
    List<Question> questions = new List();
    for (var q in await DataService().getQuestions()) {
      questions.add(Question.fromJson(q.data));
    }
    return questions;
  }
}

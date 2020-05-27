import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzzit/test_data/static_data.dart';

class DataService {
  final CollectionReference questionCollection =
      Firestore.instance.collection('questions');

  Future<List<DocumentSnapshot>> getQuestions() async {
    QuerySnapshot q = await questionCollection.getDocuments();
    return q.documents;
  }

  static int counter = 0;

  Future setSampleQuestions() async {
    for (var question in StaticData.getData()) {
      List<Map<String, dynamic>> answers = [];
      for (var answer in question.answers) {
        answers.add({'answer': answer.answer, 'isCorrect': answer.isCorrect});
      }

      await questionCollection
          .document(counter.toString())
          .setData({"question": question.question, "answers": answers});

      counter++;
    }
  }
}

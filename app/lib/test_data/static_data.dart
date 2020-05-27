import 'package:quizzzit/models/answer.dart';
import 'package:quizzzit/models/question.dart';

class StaticData {
  static List<Question> getData() {
    List<Question> questions = [
      Question(
          question: "What sort of animal is Walt Disney's Dumbo?",
          answers: [
            Answer(answer: "Deer"),
            Answer(answer: "Rabbit"),
            Answer(answer: "Elephant", isCorrect: true),
            Answer(answer: "Donkey")
          ]),
      Question(
          question:
              "What was the name of the Spanish waiter in the TV sitcom \"Fawlty Towers\"?",
          answers: [
            Answer(answer: "Manuel", isCorrect: true),
            Answer(answer: "Pedro"),
            Answer(answer: "Alfonso"),
            Answer(answer: "Javier"),
          ]),
      Question(
          question:
              "What do you call the installed operating software of devices?",
          answers: [
            Answer(answer: "Fixware"),
            Answer(answer: "Firmware", isCorrect: true),
            Answer(answer: "Hardware"),
            Answer(answer: "Shareware")
          ])
    ];

    return questions;
  }
}

class Answer {
  String answer;
  bool isCorrect = false;

  Answer({this.answer, this.isCorrect = false});

// named constructor
  Answer.fromJson(Map<dynamic, dynamic> json)
      : answer = json['answer'],
        isCorrect = json['isCorrect']; // method
  Map<String, dynamic> toJson() {
    return {
      'answer': answer,
      'isCorrect': isCorrect,
    };
  }
}

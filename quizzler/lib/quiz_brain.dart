import 'question.dart';

int _questionNumber = 0;

class QuizBrain {
  final List<Question> _questionBank = [
    Question(q: "Computer Science degree is Awesome", a: true),
    Question(q: 'AMD is a good processor', a: false),
    Question(q: 'Flutter is a good Plateform', a: true),
    Question(q: 'Flutter is a good Plateform', a: true)
  ];
  void Set_questionNumber(questionNumber) {
    _questionNumber = questionNumber;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    // print(_questionNumber);
    // print(_questionBank.length);
  }

  bool isFinished() {
    // print(_questionNumber);
    // print(_questionBank.length);
    return _questionNumber == _questionBank.length - 1;
  }

  String getQusetionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool questionAnswer_getter() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}

import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('One infected person infects about 2.5 other people.', true),
    Question('Patients with COVID-19 can take anti-inflammatory medicine like ibuprofen, aspirin or naproxen.', true),
    Question('Once infected with the coronavirus, it can take 2 to 14 days to show symptoms.', true),
    Question('Hand sanitizer doesn’t kill coronavirus because it’s antibacterial, not antiviral.', false),
    Question('Healthy people should practice social distancing.', true),
    Question('During a shelter-in-place order, my kids can be with other kids in small groups.', false),
    Question(
        'Anyone with COVID-19 symptoms, regardless of their overall health, should seek testing.',
        false),
    Question(
        'A loss of smell or taste is a symptom of COVID-19.',
        true),
    Question(
        'If you can hold your breath for 10 seconds, you don’t have COVID-19.',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
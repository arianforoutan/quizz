import 'package:quizz/data/Question.dart';

List<Question> getQuestionList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'آرین فروتن',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'اقای علیزاده'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = [
    '(شوروی سابق)روسیه',
    'آمریکا',
    'چین',
    'هند',
  ];

  var thirdQuestion = Question();
  thirdQuestion.questionTitle = 'مرتفع ترین کوه ایران کدام است؟';
  thirdQuestion.imageNameNumber = '7';
  thirdQuestion.correctAnswer = 0;
  thirdQuestion.answerList = [
    'دماوند',
    'سبلان',
    'تفتان',
    'بام کرج :)',
  ];

  return [firstQuestion, secondQuestion, thirdQuestion];
}

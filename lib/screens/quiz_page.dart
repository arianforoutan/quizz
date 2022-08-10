import 'package:flutter/material.dart';
import 'package:quizz/Constans/Constans.dart';
import 'package:quizz/data/Question.dart';
import 'package:quizz/screens/result_screen.dart';

class quizPage extends StatefulWidget {
  const quizPage({Key? key}) : super(key: key);

  @override
  State<quizPage> createState() => _quizPageState();
}

class _quizPageState extends State<quizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAnswerSumbited = false;
  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionList()[shownQuestionIndex];
    String QuestionImage =
        getQuestionList()[shownQuestionIndex].imageNameNumber!;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 218, 132),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 63, 15),
        title: Text(
          '${getQuestionList().length} سوال ${shownQuestionIndex + 1} از',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$QuestionImage.png'),
              height: 300,
            ),
            Text(
              selectedQuestion!.questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ...List.generate(4, (index) => getOptionsItem(index)),
            SizedBox(
              height: 20,
            ),
            if (isFinalAnswerSumbited == true)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext) => resultScreen(
                        resultAnswer: correctAnswer,
                      ),
                    ),
                  );
                },
                child: Text(
                  'مشاهده نتایج:)',
                  style: TextStyle(
                      color: Color.fromARGB(255, 26, 63, 15), fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  minimumSize: Size(200, 40),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          correctAnswer++;
        } else {
          print('wrong');
        }
        if (shownQuestionIndex == getQuestionList().length - 1) {
          isFinalAnswerSumbited = true;
        }
        setState(() {
          if (shownQuestionIndex < getQuestionList().length - 1) {
            shownQuestionIndex++;
          }
        });
      },
    );
  }
}

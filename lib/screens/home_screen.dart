import 'package:flutter/material.dart';
import 'package:quizz/screens/quiz_page.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 218, 132),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 63, 15),
        title: Text(
          'کوییز گیم',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/5.png'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.amber, minimumSize: Size(250.0, 50.0)),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return quizPage();
                  },
                ),
              );
            },
            child: Text(
              'شروع بازی',
              style: TextStyle(
                color: Color.fromARGB(255, 26, 63, 15),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      )),
    );
  }
}

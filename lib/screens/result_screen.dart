import 'package:flutter/material.dart';

class resultScreen extends StatelessWidget {
  resultScreen({Key? key, this.resultAnswer = 0}) : super(key: key);
  int resultAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 218, 132),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 63, 15),
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                image: AssetImage('images/cup.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'پاسخ های صحیح',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 104, 89, 5)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$resultAnswer',
              style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 3, 182)),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

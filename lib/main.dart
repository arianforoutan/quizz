import 'package:flutter/material.dart';
import 'package:quizz/screens/home_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Danna'),
      home: HomeWidget(),
    );
  }
}

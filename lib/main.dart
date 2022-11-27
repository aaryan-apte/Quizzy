import 'package:flutter/material.dart';
import 'package:prashna_manjusha/QuizPage.dart';

void main() {
  runApp(const prashna_manjusha());
}

class prashna_manjusha extends StatelessWidget {
  const prashna_manjusha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: const SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}


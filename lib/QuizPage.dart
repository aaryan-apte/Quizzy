import 'dart:math';

import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool result = true;
  int questionNumber = 0;

  List<Icon> scorer = [];

  List<String> prashna = [
    'Adi Shankaracharya appeared in Bharat',
    'Running is good for health',
    'VJTI was established in 1903',
    'Amitabh is Jaya\'s father'
  ];

  List<int> answers = [1, 1, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                prashna[questionNumber],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15.0),
            child: TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: const Text(
                'True',
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {
                print('True is selected.');
                if (answers[questionNumber].toString() == '1') {
                  scorer.add(
                      const Icon(Icons.check_rounded, color: Colors.green));
                } else {
                  scorer.add(
                      const Icon(Icons.close_rounded, color: Colors.red));
                }
                setState(() {

                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 15.0, bottom: 20.0),
            child: TextButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  )),
              child: const Text(
                'False',
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {
                if (answers[questionNumber].toString() == '0') {
                  scorer.add(
                      const Icon(Icons.check_rounded, color: Colors.green));
                } else {
                  scorer.add(
                      const Icon(Icons.close_rounded, color: Colors.red));
                }
                setState(() {

                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: scorer,
          ),
        )
      ],
    );
  }
}

// 'Adi Shankaracharya appeared in India'
// 'Running is good for health'
// 'VJTI was established in 1903'
// 'Amitabh is Jaya\'s father'

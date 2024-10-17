import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: mainScreen(),
        backgroundColor: const Color.fromARGB(255, 64, 0, 153),
      ),
    ),
  );
}

Widget mainScreen() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          height: 250,
        ),
        
        const SizedBox(
          height: 45,
        ),
        
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        
        const SizedBox(
          height: 15,
        ),
        
        OutlinedButton(
          onPressed: () {},
          child: const Text(
            "Start Quiz",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.onRestartPressed, this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

  final void Function(String what) onRestartPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "This is the result screen",
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "This is a list of answers and questions",
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {
              onRestartPressed('start-screen');
            },
            style: OutlinedButton.styleFrom(
              overlayColor: const Color.fromARGB(255, 236, 128, 255),
            ),
            child: const Text(
              "Start Quiz",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(165, 255, 255, 255),
            height: 250,
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_right_rounded,
              color: Colors.white,
            ),
            label: const Text(
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

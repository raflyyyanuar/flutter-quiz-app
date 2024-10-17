import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStartPressed, {super.key});

  final void Function(String what) onStartPressed;

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
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton.icon(
            onPressed: () {
              onStartPressed('questions-screen');
            },
            style: OutlinedButton.styleFrom(
              overlayColor: const Color.fromARGB(255, 236, 128, 255),
            ),
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

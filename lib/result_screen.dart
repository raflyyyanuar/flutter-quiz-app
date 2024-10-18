import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.onRestartPressed, this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;
  final void Function(String what) onRestartPressed;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer' : questions[i].answers[0],
          'user_answer' : selectedAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summaryData = getSummaryData();
    final int totalAnswers = questions.length;
    final int correctAnswers = summaryData.where((summary) {
      return summary['user_answer'] == summary['correct_answer'];
    }).length;

    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You got $correctAnswers out of $totalAnswers questions right!",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(summaryData),
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
              "Restart Quiz",
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

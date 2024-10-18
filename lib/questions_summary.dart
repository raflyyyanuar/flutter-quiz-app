import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    const correctColor = Color.fromARGB(255, 151, 255, 155);
    const wrongColor = Color.fromARGB(255, 255, 118, 108);
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (summary) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Question Number
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: summary['correct_answer'] == summary['user_answer']
                          ? correctColor // Add some background color
                          : wrongColor, // Adjust opacity as needed
                      border: Border.all(
                        color:
                            summary['correct_answer'] == summary['user_answer']
                                ? correctColor
                                : wrongColor,
                        width: 12, // Border width
                      ),
                    ),
                    child: Text(
                      ((summary['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Question
                          Text(
                            summary['question'] as String,
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),

                          // User answer
                          Text(
                            summary['user_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromRGBO(155, 168, 255, 1),
                            ),
                          ),  

                          // Correct answer
                          Text(
                            summary['correct_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromRGBO(181, 255, 128, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

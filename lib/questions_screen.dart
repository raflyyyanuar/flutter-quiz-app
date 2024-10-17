import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "This is a question",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              AnswerButton(
                "This is answer 1",
                () {},
              ),
              AnswerButton(
                "This is answer 2",
                () {},
              ),
              AnswerButton(
                "This is answer 3",
                () {},
              ),
              AnswerButton(
                "This is answer 4",
                () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

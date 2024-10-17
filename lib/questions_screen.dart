import 'package:flutter/material.dart';

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
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is a question"),
          Column(
            children: [
              Text("This is question A"),
              Text("This is question A"),
              Text("This is question A"),
              Text("This is question A"),
            ],
          )
        ],
      ),
    );
  }
}

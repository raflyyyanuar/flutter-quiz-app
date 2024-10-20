import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen(String what) {
    setState(() {
      activeScreen = what;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if(selectedAnswers.length >= questions.length) {
      switchScreen('result-screen');
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? screenWidget;
    if(activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
      selectedAnswers.clear();
    }
    else if(activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }
    else if(activeScreen == 'result-screen') {
      screenWidget = ResultScreen(switchScreen, selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF410179),
                Color(0xFF8530d1),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

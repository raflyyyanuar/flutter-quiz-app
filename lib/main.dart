import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: StartScreen(),
        backgroundColor: const Color.fromARGB(255, 64, 0, 153),
      ),
    ),
  );
}

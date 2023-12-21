import 'package:flutter/material.dart';
import 'package:text/components/button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text('Question...'),
          const SizedBox(
            height: 30,
          ),
          Button('Reponse 1', () {}),
          const SizedBox(
            height: 10,
          ),
          Button('Reponse 2', () {}),
          const SizedBox(
            height: 10,
          ),
          Button('Reponse 3', () {}),
          const SizedBox(
            height: 10,
          ),
          Button('Reponse 4', () {}),
        ],
      ),
    );
  }
}

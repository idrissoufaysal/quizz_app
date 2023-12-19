import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Question...'),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(onPressed: () {}, child: const Text('Reponse 1')),
        ElevatedButton(onPressed: () {}, child: const Text('Reponse 2')),
        ElevatedButton(onPressed: () {}, child: const Text('Reponse 3')),
        ElevatedButton(onPressed: () {}, child: const Text('Reponse 4'))
      ],
    );
  }
}

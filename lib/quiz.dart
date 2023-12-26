import 'package:flutter/material.dart';
import 'package:text/components/button.dart';
import 'package:text/data/questions.dart';
import 'models/quiz_question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var currentQuestionIndex = 0;

  void answersQuestion() {
    setState(() {
      currentQuestionIndex++;
      if(currentQuestionIndex==4){
        setState(() {
          currentQuestionIndex=0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(currentQuestion.text),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map(
            (answer) => Button(answer, answersQuestion),
           ),
         
         
        ],
      ),
    );
  }
}

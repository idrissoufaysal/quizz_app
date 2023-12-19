import 'package:flutter/material.dart';
import 'package:text/quiz.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.deepPurple,
          Color.fromARGB(255, 89, 65, 177),
          Color.fromARGB(255, 32, 5, 105)
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              //image
              Image.asset(
                'assets/images/quiz-logo.png',
                fit: BoxFit.cover,
                width: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              //text1
              const Text(
                'Learn flutter the fun way!',
                style: TextStyle(color: Colors.white70, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),

              OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => QuizPage(),)
              );},
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  icon:const Icon(Icons.arrow_right_alt),
                  label: const Text(
                    'Start Quiz',
                    style: TextStyle(fontSize: 12),
                  ))
              //text2
            ],
          ),
        ),
      ),
    );
  }
}

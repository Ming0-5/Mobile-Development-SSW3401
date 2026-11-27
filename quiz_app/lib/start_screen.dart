import 'package:flutter/material.dart';

class startScreen extends StatelessWidget {
  const startScreen(this.StartQuiz, {super.key});

  final void Function() StartQuiz;

  @override
  Widget build(BuildContext context) {
    return
           Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/quiz-logo.png',width: 200, height: 200,),
            const SizedBox(height: 60),
            const Text('Flutter Quiz App',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            
            const SizedBox(height: 40),
             OutlinedButton.icon(
              onPressed: (){
                StartQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Color.fromARGB(255, 239, 226, 226), width: 2),
              ),
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
              label: const Text('Start Quiz'),
              iconAlignment: IconAlignment.end,
            ),
          ],
        ),
      );
    
  }
}
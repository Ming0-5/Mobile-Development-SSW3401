import 'package:flutter/material.dart';
import 'package:dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
         colors: [Colors.deepPurple, Colors.pinkAccent],
       ),
     ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
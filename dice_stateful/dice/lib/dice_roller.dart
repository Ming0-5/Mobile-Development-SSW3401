import 'dart:math';
import 'package:flutter/material.dart';

 // creates random numbers

// Class 1: the widget itself (doesn't change)
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

// Class 2: the State, which holds the data that changes
// The "_" makes it private: only usable inside this file
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceNumber = 5; // the changing data

  void rollDice() {
    setState(() {
      // Change the data INSIDE setState so Flutter redraws the screen
      currentDiceNumber = randomizer.nextInt(6) + 1; // 1 to 6
    });
  }

  @override
  Widget build(BuildContext context) {
       return Column(
     mainAxisSize: MainAxisSize.min,
     children: [
       // Image of the dice
       Image.asset('assets/dice-$currentDiceNumber.png', width: 200),
       // Button that rolls the dice
       TextButton(
         onPressed: rollDice,
         child: const Text(
           "Press Me",
           style: TextStyle(color: Colors.black),
         ),
       ),
     ],
   );
  }
}  
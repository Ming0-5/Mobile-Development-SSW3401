import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // Data passed in from outside
  final String label;
  final VoidCallback onPressed;

  // Constructor: lets you write CustomButton(label: ..., onPressed: ...)
  const CustomButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pink,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
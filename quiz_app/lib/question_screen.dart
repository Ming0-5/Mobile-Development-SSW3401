import 'package:flutter/material.dart';
class QuestionScreen extends StatefulWidget {
 QuestionScreen({
    super.key});


  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text('Question Screen'),
    );
  }
}
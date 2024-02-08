import 'package:app/data/questions.dart';
import 'package:app/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/home_screen.dart';
import 'package:app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
 var activeScreen = 'home-screen';

 void switchScreen(){
  setState(() {
    activeScreen = 'questions-screen';
  });
 }

 void chooseAnswer(String answer) {
  selectedAnswers.add(answer);

  if(selectedAnswers.length == questions.length) {
    setState(() {
      activeScreen = 'result-screen';
    });
  }
 }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(switchScreen);

  if(activeScreen == 'questions-screen') {
    screenWidget =  QuestionsScreen(onSelectAnswer: chooseAnswer);

  }

  if (activeScreen == 'result-screen') {
    screenWidget =  ResultScreen(chosenAnswers: selectedAnswers,);
  } 

    return  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body:screenWidget ,
    )
    );
  }
}
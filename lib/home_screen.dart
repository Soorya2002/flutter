
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
             decoration:const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:
                [Color.fromARGB(255, 46, 18, 95),
                Color.fromARGB(255, 92, 45, 173)], 
                )
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const  SizedBox(height: 200),
                    Expanded(
                      child: Image.asset('assets/assets/images/quiz-logo.png',
                      width: 260,
                      color:const Color.fromARGB(150, 255, 255, 255) ,),
                    ),
                    SizedBox(child: 
                    Text('Learn Flutter the fun way!',
                    style: GoogleFonts.lato(
                      fontSize: 26,
                      color:const Color.fromARGB(255, 235, 234, 236)
                    ),
                    ), 
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30,bottom: 10),),
                    OutlinedButton.icon(onPressed: startQuiz, 
                    icon:const Icon(Icons.arrow_right_alt),
                    label:const Text('Start Quiz',
                    style:TextStyle(
                      color: Color.fromARGB(238, 246, 244, 246)
                    ) ,
                    ),
                    ),
                const  Padding(
                  padding: EdgeInsets.only(top: 30,bottom: 180))
                  ],
                ),
             ),
      );
  }
}
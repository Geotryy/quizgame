// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:quizgame/controllers/classes.dart';
import 'package:quizgame/controllers/progresslinear.dart';
import 'package:quizgame/pages/progressbar.dart';
import 'package:quizgame/pages/quizquestions/score.dart';
import 'package:quizgame/pages/telainicial.dart';


class ThirdQuiz extends StatefulWidget {
  const ThirdQuiz({super.key});
  

  @override
  State<ThirdQuiz> createState() => _ThirdQuizState();
}

class _ThirdQuizState extends State<ThirdQuiz> {
  @override
  Widget build(BuildContext context) {
    double kDefaultPadding = 20;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity, // Ocupa toda a largura disponível
          height: double.infinity, // Ocupa toda a altura disponível
          decoration: BoxDecoration(color: Color(0xFFBB41DA)),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: LinearProgress(percent: 0.0,),
            ),
          ),
        ),
        Center(
            child:
          Container(
            width: 350,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Stack(
                children: [Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Questão 1/10",
                          style: TextStyle(
                              color: Color(0xFF9932CC),
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      Center(
                          child: Column(children: const [
                       
                        Text('Qual é a teoria amplamente aceita sobre a formação do sistema solar?',
                            style: TextStyle(
                                color: Color(0xFF9932CC),
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ])),
              
                    //BOTOES DE ALTERNATIVAS
                    
                   Botoes(text: "Vênus",  correctOptionIndex: false, selectIndex: 0,
                     
                   ),
                      Botoes(text: "Júpiter", correctOptionIndex: false, selectIndex: 0,),
                      Botoes(
                        text: "Marte", correctOptionIndex: false, selectIndex: 0,
                      ),
                     Botoes(
                      text: "Mercúrio", correctOptionIndex: true, selectIndex: 0,
                     )
                    ]),
      ]),
            ),
          ),
        ),
  Align(
          alignment: Alignment.bottomCenter,
         child: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: SkipButton(nextScreen: Score(),))
        )
      ],
    ));
  }
}
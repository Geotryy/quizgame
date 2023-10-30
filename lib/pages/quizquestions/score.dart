import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizgame/controllers/classes.dart';
import 'package:quizgame/pages/telainicial.dart';

class Score extends StatefulWidget {
  const Score({super.key});

  @override
  State<Score> createState() => _ScoreState();
}
 final ScoreController scoreController = Get.find();
class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/pages/assets/fundo.jpg"),
                  fit: BoxFit.cover)),
        ),
        Column(children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Text(
              "Voce Chegou ao final!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          ),
          Text(
            "Seu Score e de ${scoreController.score.value}",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          
        Positioned(
          bottom: 150,
          left: 0,
          right: 0,
          child: Center(
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PaginainiciaL())),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                      BoxShadow(
                        color: Colors.purple.shade600,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                ),
                
                child: Center(
                  child: Text(
                    'Try Again',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ),
    ]),
   ]) );
  }
}

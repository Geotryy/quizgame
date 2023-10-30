// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:quizgame/pages/telainicial.dart';
import 'package:lottie/lottie.dart';

class Lost extends StatefulWidget {
  const Lost({super.key});

  @override
  State<Lost> createState() => _LostState();
}



class _LostState extends State<Lost> {
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
              "GAME OVER",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          ),
          Text(
            "Time is up",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Lottie.asset('lottie/gameover.json', width: 400, height: 400)]),
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
    );
  }
}

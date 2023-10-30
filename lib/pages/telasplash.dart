// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:lottie/lottie.dart';
import 'package:quizgame/pages/quizquestions/firstquiz.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
          () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => FirstQuiz(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Alignment.center;
            const end = Alignment.bottomRight;
            const curve = Curves.ease;
            final tween = AlignmentTween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return FadeTransition(
              opacity: animation,
              child: Align(
                alignment: tween.evaluate(animation),
                child: child,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/pages/assets/splash.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 90,
          child: Lottie.asset(
            'lottie/load.json', // Substitua pelo caminho correto para o seu SVG
            width: 200, // Largura desejada
            height: 200, // Altura desejada
          ),
        ),
      ],
    ));
  }
}

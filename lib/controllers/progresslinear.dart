import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quizgame/pages/voceperdeu.dart';

class LinearProgress extends StatefulWidget {
   LinearProgress({super.key, required this.percent});
 double percent = 0.0;
  @override
  _LinearProgressState createState() => _LinearProgressState();
}

class _LinearProgressState extends State<LinearProgress> {
  // Adicione esta linha para declarar a variável percent
  void mudarDeTela(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Lost()));
  }
  @override
  void initState() {
    super.initState();
    late Timer timer;
    timer = Timer.periodic(Duration(seconds: 15), (_) {
      setState(() {
        widget.percent += 1;
        if (widget.percent >= 15) {
          widget.percent = 15;
          
          Future.delayed(Duration(seconds: 1));
          mudarDeTela();
        
        }
     
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width - 50,
      animation: true,
      lineHeight: 40,
      animationDuration: 20000,
      percent: 1, // Use a porcentagem atualizada
      center: Text("${widget.percent.toStringAsFixed(1)}s"),
      barRadius: Radius.circular(16),
      progressColor: Colors.deepPurple,
      backgroundColor: Colors.deepPurple.shade100,
    );
  }
}
class TimeManager {
  double initialTime = 15.0;
  double remainingTime = 15.0;
}

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quizgame/pages/voceperdeu.dart'; 

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key, 
    required this.kDefaultPadding,
  });

  final double kDefaultPadding;

  // ignore: non_constant_identifier_names
  void IrpraOutraTelafunc(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Lost()));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 197, 197, 197), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return LinearProgressIndicator(
            value: 30.0, // Defina o valor de progresso desejado aqui
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF44FF)), // Cor do progresso
            backgroundColor: Color(0xFFFF44AA),
            borderRadius: BorderRadius.all(Radius.circular(20)), // Cor de fundo
            
          );
        }
      ),
    );
  }
}

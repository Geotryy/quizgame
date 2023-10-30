import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame/controllers/question_controller.dart';

class Botoes extends StatefulWidget {
  String text;
  int selectIndex;
  final bool correctOptionIndex;

  Botoes({
    super.key,
    required this.text,
    required this.correctOptionIndex,
    required this.selectIndex,
  });

  @override
  State<Botoes> createState() => _BotoesState();
}
 class ScoreController extends GetxController{
  var score = 0.obs;
    
  }
  ScoreController scoreController = Get.put(ScoreController());
class _BotoesState extends State<Botoes> {
 

  bool clicked = false; // Variável para controlar se o botão foi clicado
 
 var clicktap = 0;
 bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      clicktap++;
        if (clicktap == 1) {

        setIgnoring(!ignoring);
        clicked = false;
       
        widget.selectIndex++;
        
        if (widget.correctOptionIndex == false) {
          setState(() {
            // Define a borda vermelha ao clicar no botão
            clicked = true;
          });
        } else if (widget.correctOptionIndex == true) {
          scoreController.score++;
          setState(() {
            // Define a borda verde ao clicar no botão
            
            clicked = true;
          });
        }}
       
    
      },
      child: IgnorePointer(
        ignoring: ignoring,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            color: Color(0xFF9932CC),
            border: Border.all(
              color: clicked ? Colors.pink : Colors.transparent, // Adiciona borda rosa choque se clicado
              width: 2.0, // Espessura da borda
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  
}}

class SkipButton extends StatelessWidget {
  
   SkipButton({super.key, required this.nextScreen });
 
  
  
  final Widget nextScreen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: () {
             
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => nextScreen));
                 
            
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.shade600,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                  border: Border.all(color: Color(0xFF9D41DA), width: 3.0)),
              child: Center(
                  child: Text(
                'Avançar',
                style: TextStyle(
                    color: Color(0xFF9932CC),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
            ),
          );
  }}


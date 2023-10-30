// ignore_for_file: prefer_const_constructors, unnecessary_new



import 'package:flutter/material.dart';
import 'package:quizgame/pages/telasplash.dart';

class PaginainiciaL extends StatefulWidget {
  const PaginainiciaL({super.key,});

  @override
  State<PaginainiciaL> createState() => _PaginainiciaLState();
}
Route _createroute(){
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SplashScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    }
  );
}

class _PaginainiciaLState extends State<PaginainiciaL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/pages/assets/quizscreen.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom:
              100, // Aumente ou diminua esse valor para ajustar a posição do Column
          left: 0,
          right: 0,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Center(
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(_createroute()),
                child: Container(
                  width: 210,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
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
                    'Get Started',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ]),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Positioned(
              bottom:
                  50, // Aumente ou diminua esse valor para ajustar a posição do Column
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Desenvolvido por Geovanna e Felipe Pereira',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}

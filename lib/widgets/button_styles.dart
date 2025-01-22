import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonStyleMain extends StatelessWidget {
  const ButtonStyleMain({
    super.key,
    required Null Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 223, 100, 230),
            const Color.fromARGB(255, 235, 134, 177),
            const Color(0xfff69ea3),
          ], // Farbverlauf von Magenta zu Orange
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius:
            BorderRadius.all(Radius.elliptical(10, 10)), // Abgerundete Ecken
        boxShadow: [
          BoxShadow(
            color: Color(0xFFE35BEA).withOpacity(0.3), // Glow-Farbe
            blurRadius: 15, // Weichzeichnungsradius für den Leuchteffekt
            spreadRadius: 3, // Vergrößerung des Schattens nach außen
            offset: Offset(0, 8), // Zentrierung des Schattens
          ),
        ],
      ),
      child: CupertinoButton(
        padding: EdgeInsets
            .zero, // Padding auf 0, weil wir es bereits im Container gemacht haben
        child: Text(
          'Order Now',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        onPressed: () {}, // Derzeit keine Funktion
      ),
    );
  }
}

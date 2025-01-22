import 'dart:ui'; // Importieren für ImageFilter
import 'package:flutter/material.dart';
import 'package:snack_app/screens/home_screen.dart';
import 'package:snack_app/widgets/button_styles.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrundbild
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgrounds/bg_startscreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Chicken-Bild angepasst an Position des Working Screen
          Positioned(
            left: -20,
            top: 100,
            child: Container(
              width: 550,
              height: 550,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/graphics/cupcake_chick.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 435,
            left: 0,
            right: 0,
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/details/snack_snack.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          // Zentrale Card mit Blur-Effekt
          Center(
            child: Align(
              alignment: Alignment(0.0, 0.7),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      30), // Abgerundete Ecken für die Card
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent
                          .withOpacity(0), // Volle Transparenz des Containers
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0), // Der eigentliche Blur-Effekt
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                                0), // Hintergrund für den Glass-Effekt
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.1),
                              width: 1,
                            )),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(28, 32, 28, 32),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'Feeling Snackish Today?',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: -1.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Explore Angi's most popular snack selection and get instantly happy.",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ),
                              SizedBox(height: 35),
                              Center(
                                child: ButtonStyleMain(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()));
                                  },
                                ),
                              ), // Dein Button hier
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

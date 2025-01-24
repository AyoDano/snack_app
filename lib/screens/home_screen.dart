import 'package:flutter/material.dart';
import 'package:snack_app/widgets/blurred_card.dart';
import 'package:snack_app/widgets/filter_row.dart';
import 'package:snack_app/widgets/leading_filter_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrundbild
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgrounds/bg_mainscreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Titel für die Seite
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 75),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Choose Your Favorite\nSnack",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -1.0,
                      color: Colors.white,
                      height: 1.3),
                ),
              ),
              SizedBox(height: 20),
              FilterRow(),
              SizedBox(height: 35),
              BlurredCardSecondary(),
              SizedBox(height: 55),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "We Recommend",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -1.0,
                      color: Colors.white,
                      height: 1.3),
                ),
              ),
              SizedBox(height: 15),
              CustomCard(),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Erster Button im Rosa-Stil
class ButtonStyleMain extends StatelessWidget {
  final VoidCallback onPressed;

  const ButtonStyleMain({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 223, 100, 230),
            Color.fromARGB(255, 235, 134, 177),
            Color.fromARGB(255, 246, 158, 163),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFE35BEA).withValues(alpha: 0.6),
            blurRadius: 30,
            spreadRadius: 2,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: const Text(
          'Order Now',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

// Zweiter Button mit anderem Color Style
class ButtonStyleSecondary extends StatelessWidget {
  final VoidCallback onPressed;

  const ButtonStyleSecondary({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 198, 122, 206),
            Color.fromARGB(255, 148, 122, 235),
            Color.fromARGB(255, 125, 92, 233),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        border: Border.all(
            color:
                const Color.fromARGB(255, 255, 133, 173).withValues(alpha: 0.3),
            width: 2),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFE35BEA).withValues(alpha: 0.3),
            blurRadius: 30,
            spreadRadius: 5,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: const Text(
          'Add to order',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

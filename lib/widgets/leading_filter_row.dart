import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChipContainer extends StatelessWidget {
  const ChipContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.09),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/lunchbag_drink.svg',
              width: 13,
              height: 13,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            Text(
              "All Categories",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(150, 215, 215, 215),
                letterSpacing: -0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

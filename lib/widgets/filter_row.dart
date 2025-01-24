import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterRow extends StatefulWidget {
  const FilterRow({super.key});

  @override
  _FilterRowState createState() => _FilterRowState();
}

class _FilterRowState extends State<FilterRow> {
  final List<String> filters = [
    "Salty",
    "Sweet",
    "Spicy",
    "Umami",
    "Sour",
    "Dinner",
    "Fried",
  ];

  String selectedFilter = "All Categories";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.09),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 40,
              alignment: Alignment.center,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/lunchbag_drink.svg',
                    width: 13,
                    height: 13,
                    colorFilter: ColorFilter.mode(
                        const Color.fromARGB(100, 255, 255, 255),
                        BlendMode.srcIn),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "All Categories",
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: -0.5,
                      color: Color.fromARGB(150, 215, 215, 215),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.expand_more,
                    color: const Color.fromARGB(100, 255, 255, 255),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            ...filters.map(
              (filter) {
                final bool isSelected = selectedFilter == filter;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.white.withValues(alpha: 0.5)
                                : Colors.white.withValues(alpha: 0.09),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: isSelected
                                  ? Colors.white.withValues(alpha: 0)
                                  : Colors.white.withValues(alpha: 0.2),
                              width: 1,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            filter,
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: -0.5,
                              color: isSelected
                                  ? Colors.black
                                  : const Color.fromARGB(150, 215, 215, 215),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

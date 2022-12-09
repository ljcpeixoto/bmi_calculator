import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final Function? onTap;

  const ReusableCard({
    super.key,
    required this.colour,
    this.cardChild,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: cardChild,
      ),
    );
  }
}

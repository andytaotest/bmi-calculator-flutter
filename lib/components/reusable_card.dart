import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color; // Be set once, and then cannot be changed
  final Widget cardChild;
  final Function onPress;

  ReusableCard(this.color, this.cardChild, this.onPress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
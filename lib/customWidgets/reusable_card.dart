import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.width});
  final Color colour;
  final Widget cardChild;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

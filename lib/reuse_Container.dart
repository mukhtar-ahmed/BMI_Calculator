import 'package:flutter/material.dart';

class reuseContainer extends StatelessWidget {
  reuseContainer({@required this.colour , this.cardChild , this.onpress});
  final Color colour;
  final cardChild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  @override
  RoundIconButton({this.icon, this.onpressed});
  final IconData icon;
  final Function onpressed;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      shape: CircleBorder(),
      fillColor: Color(0XFFDCD939),
      elevation: 100.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'constant.dart';

class ButomButton extends StatelessWidget {
  ButomButton({this.onpress,this.label});
  final Function onpress;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        child: Text(label,
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40.0
          ),
        ),
        color: Colors.lime,
        width: double.infinity,
        height: bottomHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
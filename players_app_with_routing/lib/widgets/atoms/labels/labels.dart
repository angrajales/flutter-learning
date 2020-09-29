import 'package:flutter/material.dart';

class S2Text extends StatelessWidget {
  final String text;
  final Color color;
  final String font;
  final FontWeight fontWeight;
  final double fontSize;
  S2Text({
    @required this.text,
    this.color        = const Color(0xFFFFFFFF),
    this.font         = "Sans-serif",
    this.fontWeight   = FontWeight.bold,
    this.fontSize     = 20.0
  });
  @override
  Widget build(BuildContext context) {
    return Text (
      text,
      style: TextStyle(
        color:      this.color, 
        fontFamily: this.font, 
        fontWeight: this.fontWeight, 
        fontSize:   this.fontSize
      ),
    );
  }
}
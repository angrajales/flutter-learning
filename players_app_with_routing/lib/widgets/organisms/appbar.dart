import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF5af278),
      title: Center(
        child: Icon(Icons.grade, color: Color(0xFF01801a),),
      ),
    );
  }
}
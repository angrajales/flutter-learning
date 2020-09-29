import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {

  Map<String, String> player;
  PlayerPage({
    this.player
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.network(player['image'])
    );
  }
}
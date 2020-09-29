import 'package:flutter/material.dart';
import 'package:players_app/pages/home.dart';
import 'package:players_app/pages/player.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'player': (context) => PlayerPage()
      }
    );
  }
}
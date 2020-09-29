import 'package:flutter/material.dart';
import 'package:players_app/widgets/atoms/images/images.dart';
import 'package:players_app/widgets/atoms/labels/labels.dart';

class TeamCard extends StatelessWidget {
  final RoundedImage image;
  final S2Text title;
  TeamCard({
    @required this.image,
    @required this.title
  });
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          Expanded(
            child: image,
            flex: 1,
          ),
          title
        ]
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final RoundedImage image;
  final S2Text title;
  final S2Text subtitle;
  PlayerCard({
    @required this.image,
    @required this.title,
    @required this.subtitle
  });
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        children: [
          image,
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.only(top: 70),
              child: Center(
                child: Column(
                  children: [
                    this.title,
                    SizedBox(height: 15.0,),
                    this.subtitle
                  ],
                )
              )
            ),
          )
        ]
      ),
    );
  }
}
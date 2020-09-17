import 'package:flutter/material.dart';
import 'package:players_app/util/data.dart';
import 'package:players_app/widgets/atoms/images/images.dart';
import 'package:players_app/widgets/atoms/labels/labels.dart';
import 'package:players_app/widgets/molecules/cards/cards.dart';

class Session2Template extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for(final team in teams)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
                    child: TeamCard(
                      image: RoundedImage(
                        imagePath: team['image'],
                        radius: 10.0,
                        height: 145,
                        width: 110.0,
                      ),
                      title: S2Text(
                        text: team['title'],
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    )
                  )
              ],
            )
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                children: [
                  for(final player in players)
                    Container(
                      height: 200.0,
                      width: 150.0,
                      child: PlayerCard(
                        image: RoundedImage(
                          imagePath: player['image'],
                          radius: 15.0,
                          width: 150,
                          height: 150,
                        ),
                        title: S2Text(
                          text: player['title'],
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        subtitle: S2Text(
                          text: player['subtitle'],
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      )
                    )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
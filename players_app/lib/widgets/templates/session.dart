import 'package:flutter/material.dart';
import 'package:players_app/util/data.dart';
import 'package:players_app/widgets/atoms/images/images.dart';
import 'package:players_app/widgets/atoms/labels/labels.dart';
import 'package:players_app/widgets/molecules/cards/cards.dart';

class Session2Template extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFf2fcf6),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: S2Text(
                text: 'Teams',
                color: Color(0xFF10823b),
                fontSize: 20.0,
              ),
            )
          ),
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
          Container(
            margin: EdgeInsets.only(bottom: 20.0, top: 20.0),
            child: Center(
              child: S2Text(
                text: 'Players',
                color: Color(0xFF10823b),
                fontSize: 20.0,
              ),
            )
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                          child: Container(
                            color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 0.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
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
            ),
          )
        ],
      )
    );
  }
}
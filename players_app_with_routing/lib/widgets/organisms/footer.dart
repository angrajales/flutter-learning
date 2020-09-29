import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.0),
      padding: EdgeInsets.only(top: 10.0, left: 80.0, right: 80.0),
      height: 70,
      color: Color(0xFF86eb9a),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 0),
              child: Column(
                children: [
                  Icon(Icons.face, color: Color(0xFF01801a),),
                  SizedBox(height: 5.0),
                  Text('Face')
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 0),
              child: Column(
                children: [
                  Icon(Icons.fingerprint, color: Color(0xFF01801a),),
                  SizedBox(height: 5.0,),
                  Text('Fingerprint')
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
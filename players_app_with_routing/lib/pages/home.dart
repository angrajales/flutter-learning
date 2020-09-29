import 'package:flutter/material.dart';
import 'package:players_app/widgets/organisms/appbar.dart';
import 'package:players_app/widgets/organisms/footer.dart';
import 'package:players_app/widgets/templates/session.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(40.0),
      ),
      body: Session2Template(),
      bottomNavigationBar: Footer(),
    );
  }
}
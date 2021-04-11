import 'package:flutter/material.dart';
import 'package:responsive_gold_app/components/footer.dart';
import 'package:responsive_gold_app/components/header.dart';
import 'package:responsive_gold_app/components/side_menu.dart';

import 'components/jumbotron.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        endDrawer: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 300
          ),
          child: SideMenu(),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: size.width,
              constraints: BoxConstraints(
                minHeight: size.height
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Header(),
                  Jumbotron(),
                  Footer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
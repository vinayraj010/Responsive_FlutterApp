import 'package:flutter/material.dart';
import 'package:responsive_gold_app/components/main_button.dart';
import 'package:responsive_gold_app/responsive.dart';

import '../../../constants.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  if (isMobile(context))
                    Image.asset(
                      'assets/images/main.png',
                      height: size.height * 0.3,
                    ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Buy ',
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 64 : 32,
                            fontWeight: FontWeight.w800,
                            color: kTextColor)),
                    TextSpan(
                        text: 'Gold',
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 64 : 32,
                            fontWeight: FontWeight.w800,
                          color: kSecondaryColor,
                        )),
                  ])),
                  Text(
                    'Gold Products',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Online Today!',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 36 : 18,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    runSpacing: 10,
                    children: <Widget>[
                      MainButton(
                        title: 'GET STARTED',
                        color: kSecondaryColor,
                        tapEvent: () {},
                      ),
                      SizedBox(width: 10),
                      MainButton(
                        title: 'WATCH PRODUCTS',
                        color: kPrimaryColor,
                        tapEvent: () {},
                      )
                    ],
                  )
                ],
              ),
            )),
            if (isDesktop(context) || isTab(context))
              Expanded(
                  child: Image.asset(
                'assets/images/main.png',
                height: size.height * 0.7,
              ))
          ],
        ));
  }
}
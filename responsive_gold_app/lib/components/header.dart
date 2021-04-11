import 'package:flutter/material.dart';
import 'package:responsive_gold_app/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu_item.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/logo.jpg',
            width: 50,
          ),

          SizedBox(width: 20),
          Text(
            "Gold",
            style: GoogleFonts.reenieBeanie(fontSize: 20),
          ),
         Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                NavItem(
                  title: 'Home',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'About Us',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Contact Us',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Login',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Product',
                  tapEvent: () {},
                ),
              ],
            ),
          if (isMobile(context))
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                })
        ],
      ),
    );
  }
}

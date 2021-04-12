import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rent_house_app/cards/card_1.dart';
import 'package:rent_house_app/cards/card_2_recomended.dart';
import 'package:rent_house_app/styles/styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final transparent = BorderSide(color: Colors.transparent);
  final circular40 = BorderRadius.all(Radius.circular(27.5));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // NavBar Header
                    Container(
                      height: 14,
                      width: 18,
                      color: Colors.transparent,
                      child: Icon(FontAwesomeIcons.bars),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: kDefaultdPadding, bottom: 20),
                      child: Text(
                        'Find Your\nPerfect Place!',
                        style: headerText.copyWith(
                            fontSize: displayWidth(context) * 0.08),
                      ),
                    ),
                    // End NavBar Header
                    //  TextField
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Material(
                        borderRadius: circular40,
                        elevation: 2,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                          decoration: BoxDecoration(
                              color: primaryColor, borderRadius: circular40),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Find your dream home',
                                hintStyle: bodyText1,
                                border: InputBorder.none,
                                suffixIcon: Container(
                                    decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: circular40),
                                    child: Icon(
                                      Icons.search,
                                      color: primaryColor,
                                    ))),
                          ),
                        ),
                      ),
                    ),
                    //  END TextField
                    SizedBox(height: 30.0),
                    // CARD #1
                    FirstCardHome(),
                    // END CARD #1
                    SizedBox(height: 20.0),
                    Text('Recommended For You', style: titleText16),
                    SizedBox(height: 20.0),
                    // RECOMENDEDCARD
                    RecomendedCard(),
                    // RECOMENDEDCARD
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

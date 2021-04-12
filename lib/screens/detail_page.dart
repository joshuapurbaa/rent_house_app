import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rent_house_app/cards/card_3_house_facilities.dart';
import 'package:rent_house_app/models/card_model.dart';
import 'package:rent_house_app/styles/styles.dart';
import 'package:rent_house_app/widgets/listing_agent.dart';
import 'package:rent_house_app/widgets/price_and_booknow.dart';
import 'package:rent_house_app/widgets/star_ratings.dart';

class DetailPage extends StatefulWidget {
  final HouseType firstCard;

  DetailPage({this.firstCard});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final circular15 = BorderRadius.circular(15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    child: Hero(
                      tag: widget.firstCard.imageUrl,
                      child: Image(
                        height: displayHeight(context) * 0.45,
                        image: AssetImage(widget.firstCard.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, top: 20),
                      child: Material(
                        borderRadius: circular15,
                        elevation: 5,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: primaryColor, borderRadius: circular15),
                          child: Material(
                            borderRadius: circular15,
                            child: InkWell(
                              borderRadius: circular15,
                              splashColor: secondaryColor,
                              onTap: () => Navigator.pop(context),
                              child: Icon(
                                FontAwesomeIcons.chevronLeft,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: displayHeight(context) * 0.40),
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(30, 20, 0, 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.firstCard.houseName,
                                              style: titleText18,
                                            ),
                                            Text(
                                              'KBP ${widget.firstCard.location}, Indonesia',
                                              style: bodyText1,
                                            ),
                                          ],
                                        ),
                                        StarRating(),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    'Listing Agent',
                                    style: subTitle1,
                                  ),
                                  SizedBox(height: 10),
                                  ListingAgent(),
                                  SizedBox(height: 24),
                                  Text('House Facilities', style: subTitle1),
                                  SizedBox(height: 10),
                                  HouseFacilities(),
                                  SizedBox(height: 24),
                                  Text('Description', style: subTitle1),
                                  SizedBox(height: 10),
                                  Text(
                                    "Luxury homes at affordable prices with Bandung's\nhill atmosphere. Located in a strategic location,\nflood free.",
                                    style: bodyText2,
                                  ),
                                  SizedBox(height: 44),
                                  PriceAndBookNow(),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

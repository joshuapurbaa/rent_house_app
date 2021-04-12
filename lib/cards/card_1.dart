import 'package:flutter/material.dart';
import 'package:rent_house_app/models/card_model.dart';
import 'package:rent_house_app/screens/detail_page.dart';
import 'package:rent_house_app/styles/styles.dart';
import 'package:rent_house_app/widgets/star_ratings.dart';

class FirstCardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.26,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: firstCardHouse.length,
          itemBuilder: (BuildContext context, int index) {
            HouseType firstCard = firstCardHouse[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => DetailPage(
                            firstCard: firstCard,
                          ))),
              child: Container(
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(right: 15.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: displayHeight(context) * 0.25,
                      width: displayWidth(context) * 0.62,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 1),
                              blurRadius: 5.0,
                            ),
                          ],
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(14.0)),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                          child: Container(
                            margin: EdgeInsets.only(top: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      firstCard.houseName,
                                      style: subTitle1,
                                    ),
                                    Text(
                                      firstCard.location,
                                      style: bodyText3,
                                    ),
                                  ],
                                ),
                                StarRating(),
                              ],
                            ),
                          )),
                    ),
                    // IMAGE
                    Hero(
                      tag: firstCard.imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14)),
                        child: Image(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: displayWidth(context) * 0.62,
                          image: AssetImage(firstCard.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // END IMAGE
                  ],
                ),
              ),
            );
          }),
    );
  }
}

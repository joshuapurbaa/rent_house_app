import 'package:flutter/material.dart';
import 'package:rent_house_app/styles/styles.dart';
import 'package:rent_house_app/widgets/star_ratings.dart';

class SecondCard extends StatelessWidget {
  SecondCard(
      {@required this.image,
      @required this.houseName,
      @required this.location,
      @required this.icon});
  final Image image;
  final String houseName;
  final String location;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 30, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            height: displayHeight(context) * 0.14,
            width: double.infinity,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20.0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 8),
                          height: 70,
                          width: 70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: image,
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 120.0,
                            child: Text(
                              houseName,
                              style: subTitle1,
                            ),
                          ),
                          Container(
                            width: 120.0,
                            child: Text(
                              location,
                              style: bodyText3,
                            ),
                          ),
                          SizedBox(height: 5),
                          StarRating(),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      child: Icon(
                    icon,
                    size: 14,
                    color: kPrimaryTextColor,
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

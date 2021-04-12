import 'package:flutter/material.dart';
import 'package:rent_house_app/models/card_model.dart';
import 'package:rent_house_app/styles/styles.dart';

class HouseFacilities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.14,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: facilities.length,
          itemBuilder: (BuildContext context, int index) {
            Facilities facility = facilities[index];
            return Container(
              padding: EdgeInsets.only(left: 5),
              width: displayWidth(context) * 0.33,
              child: Stack(
                children: [
                  Container(
                    height: displayHeight(context) * 0.13,
                    width: displayWidth(context) * 0.26,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 5.0,
                          ),
                        ],
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            facility.facilitiesName,
                            style: subTitle3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // IMAGE
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                    child: Image(
                      height: displayHeight(context) * 0.09,
                      width: displayWidth(context) * 0.26,
                      image: AssetImage(facility.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // END IMAGE
                ],
              ),
            );
          }),
    );
  }
}

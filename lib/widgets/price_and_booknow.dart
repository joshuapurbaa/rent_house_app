import 'package:flutter/material.dart';
import 'package:rent_house_app/styles/styles.dart';

class PriceAndBookNow extends StatefulWidget {
  @override
  _PriceAndBookNowState createState() => _PriceAndBookNowState();
}

class _PriceAndBookNowState extends State<PriceAndBookNow> {
  final circular28 = BorderRadius.circular(28);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price',
                  style: bodyText2.copyWith(fontWeight: FontWeight.w600)),
              Text(
                '\$7,500',
                style: bodyText4,
              ),
            ],
          ),
          Material(
            borderRadius: circular28,
            elevation: 3,
            color: Colors.transparent,
            child: Container(
              height: displayHeight(context) * 0.06,
              width: displayWidth(context) * 0.45,
              decoration: BoxDecoration(
                  color: secondaryColor, borderRadius: circular28),
              child: Material(
                borderRadius: circular28,
                color: Colors.transparent,
                child: InkWell(
                  splashColor: primaryColor,
                  borderRadius: circular28,
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Book Now',
                      style: buttonText,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

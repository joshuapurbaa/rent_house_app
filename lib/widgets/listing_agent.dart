import 'package:flutter/material.dart';
import 'package:rent_house_app/styles/styles.dart';

class ListingAgent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/profile-pic.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'De Kezia',
                    style: subTitle2,
                  ),
                  Text('House Owner', style: bodyText3)
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 30),
          child: Row(
            children: [
              MessageCall(icon: Icons.message),
              SizedBox(width: 10),
              MessageCall(icon: Icons.call),
            ],
          ),
        ),
      ],
    );
  }
}

class MessageCall extends StatelessWidget {
  MessageCall({@required this.icon});
  final IconData icon;
  final circular15 = BorderRadius.circular(15);
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: circular15,
      elevation: 4,
      child: Container(
          height: 30,
          width: 30,
          decoration:
              BoxDecoration(color: Color(0xFFF1F3FF), borderRadius: circular15),
          child: Material(
            borderRadius: circular15,
            color: Colors.transparent,
            child: InkWell(
              splashColor: primaryColor,
              borderRadius: circular15,
              onTap: () {},
              child: Icon(
                icon,
                size: 16,
                color: secondaryColor,
              ),
            ),
          )),
    );
  }
}

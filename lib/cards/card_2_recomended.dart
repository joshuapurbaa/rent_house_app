import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rent_house_app/widgets/second_card.dart';

class RecomendedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondCard(
          image: Image(image: AssetImage('assets/images/wooden-house.png')),
          houseName: 'Wooden House',
          location: 'Bandung',
          icon: FontAwesomeIcons.chevronRight,
        ),
        SizedBox(height: 10),
        SecondCard(
          image: Image(image: AssetImage('assets/images/triangle-house.png')),
          houseName: 'Triangle House',
          location: 'Bogor',
          icon: FontAwesomeIcons.chevronRight,
        ),
        SizedBox(height: 10),
        SecondCard(
          image: Image(image: AssetImage('assets/images/hill-house.png')),
          houseName: 'Hill House',
          location: 'Makassar',
          icon: FontAwesomeIcons.chevronRight,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

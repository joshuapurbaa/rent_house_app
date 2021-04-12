import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:rent_house_app/styles/styles.dart';

class StarRating extends StatefulWidget {
  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  var rating = 4.5;
  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
        color: starRating,
        rating: rating,
        isReadOnly: false,
        size: 14,
        filledIconData: Icons.star,
        halfFilledIconData: Icons.star_half,
        defaultIconData: Icons.star_border,
        starCount: 5,
        allowHalfRating: true,
        spacing: 2.0,
        onRated: (value) {
          print("rating value -> $value");
        });
  }
}

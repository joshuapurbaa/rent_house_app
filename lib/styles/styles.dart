import 'package:flutter/material.dart';

Color kPrimaryTextColor = Color(0xFF253342);
Color kSecondaryTextColor = Color(0xFFAFAFAF);
Color backgroundColor = Color(0xFFE5E5E5);
Color primaryColor = Color(0xFFFFFFFF);
Color secondaryColor = Color(0xFF5F6AC4);
Color starRating = Color(0xFFE76D81);

const kDefaultdPadding = 30.0;

Size displaySize(BuildContext context) {
  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

TextStyle headerText = TextStyle(
    color: kPrimaryTextColor, fontSize: 30.0, fontWeight: FontWeight.w600);

TextStyle titleText16 = TextStyle(
    color: kPrimaryTextColor, fontSize: 16.0, fontWeight: FontWeight.w600);

TextStyle titleText18 = TextStyle(
    color: kPrimaryTextColor, fontSize: 18.0, fontWeight: FontWeight.w600);

TextStyle subTitle1 = TextStyle(
    color: kPrimaryTextColor, fontSize: 14.0, fontWeight: FontWeight.w600);

TextStyle subTitle2 = TextStyle(
    color: kPrimaryTextColor, fontSize: 14.0, fontWeight: FontWeight.w500);

TextStyle subTitle3 = TextStyle(
    color: kPrimaryTextColor, fontSize: 10.0, fontWeight: FontWeight.w500);

TextStyle bodyText3 = TextStyle(
    color: kSecondaryTextColor, fontSize: 10.0, fontWeight: FontWeight.w400);

TextStyle bodyText2 = TextStyle(
    color: kSecondaryTextColor, fontSize: 12.0, fontWeight: FontWeight.w400);

TextStyle bodyText1 = TextStyle(
    color: kSecondaryTextColor, fontSize: 14.0, fontWeight: FontWeight.w400);

TextStyle bodyText4 = TextStyle(
    color: secondaryColor, fontSize: 20.0, fontWeight: FontWeight.w700);

TextStyle buttonText =
    TextStyle(color: primaryColor, fontSize: 16.0, fontWeight: FontWeight.w600);

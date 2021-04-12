import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HouseType {
  String imageUrl;
  String houseName;
  String location;
  IconData rightIcon;
  List<IconData> ratings;

  HouseType(
      {this.imageUrl,
      this.houseName,
      this.location,
      this.rightIcon,
      this.ratings});
}

class Facilities {
  String imageUrl;
  String facilitiesName;

  Facilities({
    this.imageUrl,
    this.facilitiesName,
  });
}

List<HouseType> firstCardHouse = [
  HouseType(
    imageUrl: 'assets/images/modern-house.png',
    houseName: 'Modern House',
    location: 'Bandung',
  ),
  HouseType(
    imageUrl: 'assets/images/white-house.png',
    houseName: 'White House',
    location: 'Jakarta',
  ),
];

List<Facilities> facilities = [
  Facilities(
      imageUrl: 'assets/images/swimming-pool.png',
      facilitiesName: 'Swimming Pool'),
  Facilities(imageUrl: 'assets/images/bed.png', facilitiesName: '4 Bedroom'),
  Facilities(imageUrl: 'assets/images/garage.png', facilitiesName: 'Garage'),
];

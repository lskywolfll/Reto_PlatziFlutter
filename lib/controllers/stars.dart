import 'package:flutter/material.dart';

// ignore: camel_case_types
class stars {
  static Widget drawStars(
      double numberStars, double marginTop, double marginLeft) {
    List<Widget> rowStars = [];

    for (var i = 0; i < 5; i++) {
      rowStars.add(starWidget(numberStars, marginTop, marginLeft));
      numberStars--;
    }

    return Row(
      children: rowStars,
    );
  }

  static Widget starWidget(
      double valueStar, double marginTop, double marginLeft) {
    return Container(
      margin: EdgeInsets.only(top: marginTop, right: marginLeft),
      child: validateStarIconWidget(valueStar),
    );
  }

  static Widget validateStarIconWidget(double pointStar) {
    if (pointStar >= 1.0) {
      return fullStarIconWidget();
    }

    if (pointStar >= 0.5) {
      print(pointStar);
      return halfStarIconWidget();
    }

    return emptyStarIconWidget();
  }

  static Widget fullStarIconWidget() {
    return new Icon(
      Icons.star,
      color: Color(0XFFF2C611),
    );
  }

  static Widget halfStarIconWidget() {
    return new Icon(
      Icons.star_half,
      color: Color(0XFFF2C611),
    );
  }

  static Widget emptyStarIconWidget() {
    return new Icon(
      Icons.star_border,
      color: Color(0XFFF2C611),
    );
  }
}

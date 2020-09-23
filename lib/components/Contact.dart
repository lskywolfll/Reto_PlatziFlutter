import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Contact extends StatelessWidget {
  final String pathImage;
  final String userName;
  String details = "Experience: 04 years";
  final String comment;
  final double pointStars;
  double _spacing = 15.0;

  Contact(this.pathImage, this.userName, this.comment, this.pointStars);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _foto(),
        _userDetails(),
        userActionIcon()
      ],
    );
  }

  Widget userInfo() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: 10.0),
      child: Text(
        details,
        style: TextStyle(
            fontFamily: 'Lato', fontSize: 17.0, color: Color(0xFFa3a5a7)),
      ),
    );
  }

  Widget userActionIcon() {
    return Container(
      margin: EdgeInsets.only(left: 80.0, top: _spacing),
      alignment: Alignment.centerRight,
      child: ClipOval(
        child: Container(
          color: Colors.red,
          width: 50.0,
          height: 50.0,
          child: Icon(Icons.email, color: Colors.white,),
        ),
      ),
    );
  }

  Widget _userName() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: _spacing),
      child: Text(
        userName,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 17.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w900,
            color: Colors.black),
      ),
    );
  }

  Widget _userDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[_userName(), userInfo()],
    );
  }

  Widget _foto() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 70.0,
      height: 70.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(pathImage),
      ),
    );
  }
}
